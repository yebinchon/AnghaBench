
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 size_t strnlen (char*,size_t) ;

__attribute__((used)) static int fuse_verify_xattr_list(char *list, size_t size)
{
 size_t origsize = size;

 while (size) {
  size_t thislen = strnlen(list, size);

  if (!thislen || thislen == size)
   return -EIO;

  size -= thislen + 1;
  list += thislen + 1;
 }

 return origsize;
}
