
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int dummy; } ;
struct fuse_conn {int no_access; } ;
struct fuse_access_in {int mask; } ;
typedef int inarg ;
struct TYPE_6__ {int in_numargs; TYPE_1__* in_args; int nodeid; int opcode; } ;
struct TYPE_5__ {int size; struct fuse_access_in* value; } ;


 int BUG_ON (int) ;
 int ENOSYS ;
 int FUSE_ACCESS ;
 int FUSE_ARGS (TYPE_2__) ;
 int MAY_EXEC ;
 int MAY_NOT_BLOCK ;
 int MAY_READ ;
 int MAY_WRITE ;
 TYPE_2__ args ;
 int fuse_simple_request (struct fuse_conn*,TYPE_2__*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int get_node_id (struct inode*) ;
 int memset (struct fuse_access_in*,int ,int) ;

__attribute__((used)) static int fuse_access(struct inode *inode, int mask)
{
 struct fuse_conn *fc = get_fuse_conn(inode);
 FUSE_ARGS(args);
 struct fuse_access_in inarg;
 int err;

 BUG_ON(mask & MAY_NOT_BLOCK);

 if (fc->no_access)
  return 0;

 memset(&inarg, 0, sizeof(inarg));
 inarg.mask = mask & (MAY_READ | MAY_WRITE | MAY_EXEC);
 args.opcode = FUSE_ACCESS;
 args.nodeid = get_node_id(inode);
 args.in_numargs = 1;
 args.in_args[0].size = sizeof(inarg);
 args.in_args[0].value = &inarg;
 err = fuse_simple_request(fc, &args);
 if (err == -ENOSYS) {
  fc->no_access = 1;
  err = 0;
 }
 return err;
}
