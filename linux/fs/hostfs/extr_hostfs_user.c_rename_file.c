
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int rename (char*,char*) ;

int rename_file(char *from, char *to)
{
 int err;

 err = rename(from, to);
 if (err < 0)
  return -errno;
 return 0;
}
