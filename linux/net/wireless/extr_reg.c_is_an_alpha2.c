
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalpha (char const) ;

__attribute__((used)) static bool is_an_alpha2(const char *alpha2)
{
 if (!alpha2)
  return 0;
 return isalpha(alpha2[0]) && isalpha(alpha2[1]);
}
