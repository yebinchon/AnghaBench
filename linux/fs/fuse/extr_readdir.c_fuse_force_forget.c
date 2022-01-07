
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct fuse_forget_in {int nlookup; } ;
struct fuse_conn {int dummy; } ;
struct file {int dummy; } ;
typedef int inarg ;
struct TYPE_6__ {int in_numargs; int force; int noreply; TYPE_1__* in_args; int nodeid; int opcode; } ;
struct TYPE_5__ {int size; struct fuse_forget_in* value; } ;


 int FUSE_ARGS (TYPE_2__) ;
 int FUSE_FORGET ;
 TYPE_2__ args ;
 struct inode* file_inode (struct file*) ;
 int fuse_simple_request (struct fuse_conn*,TYPE_2__*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int memset (struct fuse_forget_in*,int ,int) ;

__attribute__((used)) static void fuse_force_forget(struct file *file, u64 nodeid)
{
 struct inode *inode = file_inode(file);
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_forget_in inarg;
 FUSE_ARGS(args);

 memset(&inarg, 0, sizeof(inarg));
 inarg.nlookup = 1;
 args.opcode = FUSE_FORGET;
 args.nodeid = nodeid;
 args.in_numargs = 1;
 args.in_args[0].size = sizeof(inarg);
 args.in_args[0].value = &inarg;
 args.force = 1;
 args.noreply = 1;

 fuse_simple_request(fc, &args);

}
