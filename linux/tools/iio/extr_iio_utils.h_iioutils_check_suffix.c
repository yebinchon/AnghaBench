
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static inline int iioutils_check_suffix(const char *str, const char *suffix)
{
 return strlen(str) >= strlen(suffix) &&
  strncmp(str+strlen(str)-strlen(suffix),
   suffix, strlen(suffix)) == 0;
}
