
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; } ;
struct TYPE_5__ {TYPE_1__ h; } ;
struct fuse_req {int * argbuf; TYPE_2__ out; } ;
struct fuse_args {unsigned int in_numargs; unsigned int in_pages; int out_numargs; unsigned int out_pages; TYPE_3__* out_args; scalar_t__ out_argvar; scalar_t__ in_args; } ;
struct fuse_arg {int dummy; } ;
struct TYPE_6__ {unsigned int size; int value; } ;


 unsigned int fuse_len_args (unsigned int,struct fuse_arg*) ;
 int kfree (int *) ;
 int memcpy (int ,int *,unsigned int) ;

__attribute__((used)) static void copy_args_from_argbuf(struct fuse_args *args, struct fuse_req *req)
{
 unsigned int remaining;
 unsigned int offset;
 unsigned int num_in;
 unsigned int num_out;
 unsigned int i;

 remaining = req->out.h.len - sizeof(req->out.h);
 num_in = args->in_numargs - args->in_pages;
 num_out = args->out_numargs - args->out_pages;
 offset = fuse_len_args(num_in, (struct fuse_arg *)args->in_args);

 for (i = 0; i < num_out; i++) {
  unsigned int argsize = args->out_args[i].size;

  if (args->out_argvar &&
      i == args->out_numargs - 1 &&
      argsize > remaining) {
   argsize = remaining;
  }

  memcpy(args->out_args[i].value, req->argbuf + offset, argsize);
  offset += argsize;

  if (i != args->out_numargs - 1)
   remaining -= argsize;
 }


 if (args->out_argvar)
  args->out_args[args->out_numargs - 1].size = remaining;

 kfree(req->argbuf);
 req->argbuf = ((void*)0);
}
