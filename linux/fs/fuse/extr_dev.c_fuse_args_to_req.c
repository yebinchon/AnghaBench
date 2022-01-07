
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nodeid; int opcode; } ;
struct TYPE_4__ {TYPE_1__ h; } ;
struct fuse_req {struct fuse_args* args; TYPE_2__ in; } ;
struct fuse_args {int nodeid; int opcode; } ;



__attribute__((used)) static void fuse_args_to_req(struct fuse_req *req, struct fuse_args *args)
{
 req->in.h.opcode = args->opcode;
 req->in.h.nodeid = args->nodeid;
 req->args = args;
}
