
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t nfs_string_strip(const char *c, size_t len)
{
 while (len > 0 && c[len-1] == '\n')
  --len;
 return len;
}
