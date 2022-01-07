
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char const) ;

const char *skipn_spaces(const char *str, size_t n)
{
 for (; n && isspace(*str); --n)
  ++str;
 if (n)
  return (char *)str;
 return ((void*)0);
}
