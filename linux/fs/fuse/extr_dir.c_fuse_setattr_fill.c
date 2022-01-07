
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct fuse_setattr_in {int dummy; } ;
struct fuse_conn {int dummy; } ;
struct fuse_attr_out {int dummy; } ;
struct fuse_args {int in_numargs; int out_numargs; TYPE_2__* out_args; TYPE_1__* in_args; int nodeid; int opcode; } ;
struct TYPE_4__ {int size; struct fuse_attr_out* value; } ;
struct TYPE_3__ {int size; struct fuse_setattr_in* value; } ;


 int FUSE_SETATTR ;
 int get_node_id (struct inode*) ;

__attribute__((used)) static void fuse_setattr_fill(struct fuse_conn *fc, struct fuse_args *args,
         struct inode *inode,
         struct fuse_setattr_in *inarg_p,
         struct fuse_attr_out *outarg_p)
{
 args->opcode = FUSE_SETATTR;
 args->nodeid = get_node_id(inode);
 args->in_numargs = 1;
 args->in_args[0].size = sizeof(*inarg_p);
 args->in_args[0].value = inarg_p;
 args->out_numargs = 1;
 args->out_args[0].size = sizeof(*outarg_p);
 args->out_args[0].value = outarg_p;
}
