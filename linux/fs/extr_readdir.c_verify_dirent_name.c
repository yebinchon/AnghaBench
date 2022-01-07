
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 scalar_t__ memchr (char const*,char,int) ;

__attribute__((used)) static int verify_dirent_name(const char *name, int len)
{
 if (!len)
  return -EIO;
 if (memchr(name, '/', len))
  return -EIO;
 return 0;
}
