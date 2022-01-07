
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int dummy; } ;
struct fuse_conn {int no_removexattr; } ;
struct TYPE_6__ {int in_numargs; TYPE_1__* in_args; int nodeid; int opcode; } ;
struct TYPE_5__ {char const* value; scalar_t__ size; } ;


 int ENOSYS ;
 int EOPNOTSUPP ;
 int FUSE_ARGS (TYPE_2__) ;
 int FUSE_REMOVEXATTR ;
 TYPE_2__ args ;
 int fuse_invalidate_attr (struct inode*) ;
 int fuse_simple_request (struct fuse_conn*,TYPE_2__*) ;
 int fuse_update_ctime (struct inode*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int get_node_id (struct inode*) ;
 scalar_t__ strlen (char const*) ;

int fuse_removexattr(struct inode *inode, const char *name)
{
 struct fuse_conn *fc = get_fuse_conn(inode);
 FUSE_ARGS(args);
 int err;

 if (fc->no_removexattr)
  return -EOPNOTSUPP;

 args.opcode = FUSE_REMOVEXATTR;
 args.nodeid = get_node_id(inode);
 args.in_numargs = 1;
 args.in_args[0].size = strlen(name) + 1;
 args.in_args[0].value = name;
 err = fuse_simple_request(fc, &args);
 if (err == -ENOSYS) {
  fc->no_removexattr = 1;
  err = -EOPNOTSUPP;
 }
 if (!err) {
  fuse_invalidate_attr(inode);
  fuse_update_ctime(inode);
 }
 return err;
}
