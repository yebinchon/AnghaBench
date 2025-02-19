
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_out_header {int dummy; } ;
struct fuse_copy_state {int dummy; } ;
struct fuse_args {int out_numargs; int page_zeroing; struct fuse_arg* out_args; int out_pages; int out_argvar; } ;
struct fuse_arg {unsigned int size; } ;


 int EINVAL ;
 int fuse_copy_args (struct fuse_copy_state*,int,int ,struct fuse_arg*,int ) ;
 scalar_t__ fuse_len_args (int,struct fuse_arg*) ;

__attribute__((used)) static int copy_out_args(struct fuse_copy_state *cs, struct fuse_args *args,
    unsigned nbytes)
{
 unsigned reqsize = sizeof(struct fuse_out_header);

 reqsize += fuse_len_args(args->out_numargs, args->out_args);

 if (reqsize < nbytes || (reqsize > nbytes && !args->out_argvar))
  return -EINVAL;
 else if (reqsize > nbytes) {
  struct fuse_arg *lastarg = &args->out_args[args->out_numargs-1];
  unsigned diffsize = reqsize - nbytes;

  if (diffsize > lastarg->size)
   return -EINVAL;
  lastarg->size -= diffsize;
 }
 return fuse_copy_args(cs, args->out_numargs, args->out_pages,
         args->out_args, args->page_zeroing);
}
