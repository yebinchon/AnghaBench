
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {scalar_t__ i_size; scalar_t__ i_sb; } ;
struct fuse_write_out {int size; } ;
struct fuse_inode {int state; } ;
struct fuse_file {int nodeid; int fh; struct fuse_conn* fc; } ;
struct fuse_copy_file_range_in {scalar_t__ off_in; scalar_t__ off_out; size_t len; unsigned int flags; int fh_out; int nodeid_out; int fh_in; } ;
struct fuse_conn {int no_copy_file_range; scalar_t__ writeback_cache; } ;
struct file {struct fuse_file* private_data; } ;
typedef int ssize_t ;
typedef int outarg ;
typedef scalar_t__ loff_t ;
typedef int inarg ;
struct TYPE_8__ {int in_numargs; int out_numargs; TYPE_2__* out_args; TYPE_1__* in_args; int nodeid; int opcode; } ;
struct TYPE_7__ {int size; struct fuse_write_out* value; } ;
struct TYPE_6__ {int size; struct fuse_copy_file_range_in* value; } ;


 int ENOSYS ;
 int EOPNOTSUPP ;
 int EXDEV ;
 int FUSE_ARGS (TYPE_3__) ;
 int FUSE_COPY_FILE_RANGE ;
 int FUSE_I_SIZE_UNSTABLE ;
 TYPE_3__ args ;
 int clear_bit (int ,int *) ;
 int file_accessed (struct file*) ;
 struct inode* file_inode (struct file*) ;
 int file_modified (struct file*) ;
 int file_update_time (struct file*) ;
 int fuse_invalidate_attr (struct inode*) ;
 int fuse_simple_request (struct fuse_conn*,TYPE_3__*) ;
 int fuse_write_update_size (struct inode*,scalar_t__) ;
 int fuse_writeback_range (struct inode*,scalar_t__,scalar_t__) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static ssize_t __fuse_copy_file_range(struct file *file_in, loff_t pos_in,
          struct file *file_out, loff_t pos_out,
          size_t len, unsigned int flags)
{
 struct fuse_file *ff_in = file_in->private_data;
 struct fuse_file *ff_out = file_out->private_data;
 struct inode *inode_in = file_inode(file_in);
 struct inode *inode_out = file_inode(file_out);
 struct fuse_inode *fi_out = get_fuse_inode(inode_out);
 struct fuse_conn *fc = ff_in->fc;
 FUSE_ARGS(args);
 struct fuse_copy_file_range_in inarg = {
  .fh_in = ff_in->fh,
  .off_in = pos_in,
  .nodeid_out = ff_out->nodeid,
  .fh_out = ff_out->fh,
  .off_out = pos_out,
  .len = len,
  .flags = flags
 };
 struct fuse_write_out outarg;
 ssize_t err;


 bool is_unstable = (!fc->writeback_cache) &&
      ((pos_out + len) > inode_out->i_size);

 if (fc->no_copy_file_range)
  return -EOPNOTSUPP;

 if (file_inode(file_in)->i_sb != file_inode(file_out)->i_sb)
  return -EXDEV;

 if (fc->writeback_cache) {
  inode_lock(inode_in);
  err = fuse_writeback_range(inode_in, pos_in, pos_in + len);
  inode_unlock(inode_in);
  if (err)
   return err;
 }

 inode_lock(inode_out);

 err = file_modified(file_out);
 if (err)
  goto out;

 if (fc->writeback_cache) {
  err = fuse_writeback_range(inode_out, pos_out, pos_out + len);
  if (err)
   goto out;
 }

 if (is_unstable)
  set_bit(FUSE_I_SIZE_UNSTABLE, &fi_out->state);

 args.opcode = FUSE_COPY_FILE_RANGE;
 args.nodeid = ff_in->nodeid;
 args.in_numargs = 1;
 args.in_args[0].size = sizeof(inarg);
 args.in_args[0].value = &inarg;
 args.out_numargs = 1;
 args.out_args[0].size = sizeof(outarg);
 args.out_args[0].value = &outarg;
 err = fuse_simple_request(fc, &args);
 if (err == -ENOSYS) {
  fc->no_copy_file_range = 1;
  err = -EOPNOTSUPP;
 }
 if (err)
  goto out;

 if (fc->writeback_cache) {
  fuse_write_update_size(inode_out, pos_out + outarg.size);
  file_update_time(file_out);
 }

 fuse_invalidate_attr(inode_out);

 err = outarg.size;
out:
 if (is_unstable)
  clear_bit(FUSE_I_SIZE_UNSTABLE, &fi_out->state);

 inode_unlock(inode_out);
 file_accessed(file_in);

 return err;
}
