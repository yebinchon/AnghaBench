
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int ENOSPC ;
 char* kstrndup (char const*,size_t,int ) ;

__attribute__((used)) static int __kstrncpy(char **dst, const char *name, size_t count, gfp_t gfp)
{
 *dst = kstrndup(name, count, gfp);
 if (!*dst)
  return -ENOSPC;
 return count;
}
