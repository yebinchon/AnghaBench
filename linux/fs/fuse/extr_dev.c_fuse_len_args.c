
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_arg {scalar_t__ size; } ;



unsigned int fuse_len_args(unsigned int numargs, struct fuse_arg *args)
{
 unsigned nbytes = 0;
 unsigned i;

 for (i = 0; i < numargs; i++)
  nbytes += args[i].size;

 return nbytes;
}
