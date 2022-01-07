
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u64 ;
struct kstat {int dummy; } ;
struct inode {int i_mode; } ;
struct TYPE_11__ {int mode; } ;
struct fuse_getattr_in {TYPE_4__ attr; int fh; int getattr_flags; } ;
struct fuse_file {int fh; } ;
struct fuse_conn {int dummy; } ;
struct fuse_attr_out {TYPE_4__ attr; int fh; int getattr_flags; } ;
struct file {struct fuse_file* private_data; } ;
typedef int outarg ;
typedef int inarg ;
struct TYPE_10__ {int in_numargs; int out_numargs; TYPE_2__* out_args; TYPE_1__* in_args; int nodeid; int opcode; } ;
struct TYPE_9__ {int size; struct fuse_getattr_in* value; } ;
struct TYPE_8__ {int size; struct fuse_getattr_in* value; } ;


 int EIO ;
 int FUSE_ARGS (TYPE_3__) ;
 int FUSE_GETATTR ;
 int FUSE_GETATTR_FH ;
 int S_IFMT ;
 scalar_t__ S_ISREG (int) ;
 TYPE_3__ args ;
 int attr_timeout (struct fuse_getattr_in*) ;
 int fuse_change_attributes (struct inode*,TYPE_4__*,int ,int ) ;
 int fuse_fillattr (struct inode*,TYPE_4__*,struct kstat*) ;
 int fuse_get_attr_version (struct fuse_conn*) ;
 int fuse_simple_request (struct fuse_conn*,TYPE_3__*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int get_node_id (struct inode*) ;
 int make_bad_inode (struct inode*) ;
 int memset (struct fuse_getattr_in*,int ,int) ;

__attribute__((used)) static int fuse_do_getattr(struct inode *inode, struct kstat *stat,
      struct file *file)
{
 int err;
 struct fuse_getattr_in inarg;
 struct fuse_attr_out outarg;
 struct fuse_conn *fc = get_fuse_conn(inode);
 FUSE_ARGS(args);
 u64 attr_version;

 attr_version = fuse_get_attr_version(fc);

 memset(&inarg, 0, sizeof(inarg));
 memset(&outarg, 0, sizeof(outarg));

 if (file && S_ISREG(inode->i_mode)) {
  struct fuse_file *ff = file->private_data;

  inarg.getattr_flags |= FUSE_GETATTR_FH;
  inarg.fh = ff->fh;
 }
 args.opcode = FUSE_GETATTR;
 args.nodeid = get_node_id(inode);
 args.in_numargs = 1;
 args.in_args[0].size = sizeof(inarg);
 args.in_args[0].value = &inarg;
 args.out_numargs = 1;
 args.out_args[0].size = sizeof(outarg);
 args.out_args[0].value = &outarg;
 err = fuse_simple_request(fc, &args);
 if (!err) {
  if ((inode->i_mode ^ outarg.attr.mode) & S_IFMT) {
   make_bad_inode(inode);
   err = -EIO;
  } else {
   fuse_change_attributes(inode, &outarg.attr,
            attr_timeout(&outarg),
            attr_version);
   if (stat)
    fuse_fillattr(inode, &outarg.attr, stat);
  }
 }
 return err;
}
