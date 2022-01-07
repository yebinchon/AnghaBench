
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int dummy; } ;
struct fuse_flush_in {int lock_owner; int fh; } ;
struct fuse_file {int fh; } ;
struct fuse_conn {int no_flush; } ;
struct file {int f_mapping; struct fuse_file* private_data; } ;
typedef int inarg ;
typedef int fl_owner_t ;
struct TYPE_6__ {int in_numargs; int force; TYPE_1__* in_args; int nodeid; int opcode; } ;
struct TYPE_5__ {int size; struct fuse_flush_in* value; } ;


 int EIO ;
 int ENOSYS ;
 int FUSE_ARGS (TYPE_2__) ;
 int FUSE_FLUSH ;
 TYPE_2__ args ;
 struct inode* file_inode (struct file*) ;
 int filemap_check_errors (int ) ;
 int fuse_lock_owner_id (struct fuse_conn*,int ) ;
 int fuse_simple_request (struct fuse_conn*,TYPE_2__*) ;
 int fuse_sync_writes (struct inode*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int get_node_id (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int memset (struct fuse_flush_in*,int ,int) ;
 int write_inode_now (struct inode*,int) ;

__attribute__((used)) static int fuse_flush(struct file *file, fl_owner_t id)
{
 struct inode *inode = file_inode(file);
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_file *ff = file->private_data;
 struct fuse_flush_in inarg;
 FUSE_ARGS(args);
 int err;

 if (is_bad_inode(inode))
  return -EIO;

 if (fc->no_flush)
  return 0;

 err = write_inode_now(inode, 1);
 if (err)
  return err;

 inode_lock(inode);
 fuse_sync_writes(inode);
 inode_unlock(inode);

 err = filemap_check_errors(file->f_mapping);
 if (err)
  return err;

 memset(&inarg, 0, sizeof(inarg));
 inarg.fh = ff->fh;
 inarg.lock_owner = fuse_lock_owner_id(fc, id);
 args.opcode = FUSE_FLUSH;
 args.nodeid = get_node_id(inode);
 args.in_numargs = 1;
 args.in_args[0].size = sizeof(inarg);
 args.in_args[0].value = &inarg;
 args.force = 1;

 err = fuse_simple_request(fc, &args);
 if (err == -ENOSYS) {
  fc->no_flush = 1;
  err = 0;
 }
 return err;
}
