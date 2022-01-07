
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int strtoull (char const*,char**,int) ;

int hex2u64(const char *ptr, u64 *long_val)
{
 char *p;

 *long_val = strtoull(ptr, &p, 16);

 return p - ptr;
}
