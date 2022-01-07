
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct kstatfs {int f_type; } ;
struct fuse_statfs_out {int st; } ;
struct fuse_conn {int dummy; } ;
struct dentry {struct super_block* d_sb; } ;
typedef int outarg ;
struct TYPE_6__ {int out_numargs; TYPE_1__* out_args; int nodeid; int opcode; scalar_t__ in_numargs; } ;
struct TYPE_5__ {int size; struct fuse_statfs_out* value; } ;


 int FUSE_ARGS (TYPE_2__) ;
 int FUSE_STATFS ;
 int FUSE_SUPER_MAGIC ;
 TYPE_2__ args ;
 int convert_fuse_statfs (struct kstatfs*,int *) ;
 int d_inode (struct dentry*) ;
 int fuse_allow_current_process (struct fuse_conn*) ;
 int fuse_simple_request (struct fuse_conn*,TYPE_2__*) ;
 struct fuse_conn* get_fuse_conn_super (struct super_block*) ;
 int get_node_id (int ) ;
 int memset (struct fuse_statfs_out*,int ,int) ;

__attribute__((used)) static int fuse_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct super_block *sb = dentry->d_sb;
 struct fuse_conn *fc = get_fuse_conn_super(sb);
 FUSE_ARGS(args);
 struct fuse_statfs_out outarg;
 int err;

 if (!fuse_allow_current_process(fc)) {
  buf->f_type = FUSE_SUPER_MAGIC;
  return 0;
 }

 memset(&outarg, 0, sizeof(outarg));
 args.in_numargs = 0;
 args.opcode = FUSE_STATFS;
 args.nodeid = get_node_id(d_inode(dentry));
 args.out_numargs = 1;
 args.out_args[0].size = sizeof(outarg);
 args.out_args[0].value = &outarg;
 err = fuse_simple_request(fc, &args);
 if (!err)
  convert_fuse_statfs(buf, &outarg.st);
 return err;
}
