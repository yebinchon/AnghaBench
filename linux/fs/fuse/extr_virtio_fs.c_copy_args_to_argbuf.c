
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fuse_req {scalar_t__ argbuf; struct fuse_args* args; } ;
struct fuse_args {unsigned int in_numargs; unsigned int in_pages; unsigned int out_numargs; unsigned int out_pages; TYPE_1__* in_args; struct fuse_arg* out_args; } ;
struct fuse_arg {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; int value; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 unsigned int fuse_len_args (unsigned int,struct fuse_arg*) ;
 scalar_t__ kmalloc (unsigned int,int ) ;
 int memcpy (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static int copy_args_to_argbuf(struct fuse_req *req)
{
 struct fuse_args *args = req->args;
 unsigned int offset = 0;
 unsigned int num_in;
 unsigned int num_out;
 unsigned int len;
 unsigned int i;

 num_in = args->in_numargs - args->in_pages;
 num_out = args->out_numargs - args->out_pages;
 len = fuse_len_args(num_in, (struct fuse_arg *) args->in_args) +
       fuse_len_args(num_out, args->out_args);

 req->argbuf = kmalloc(len, GFP_ATOMIC);
 if (!req->argbuf)
  return -ENOMEM;

 for (i = 0; i < num_in; i++) {
  memcpy(req->argbuf + offset,
         args->in_args[i].value,
         args->in_args[i].size);
  offset += args->in_args[i].size;
 }

 return 0;
}
