
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isxdigit (char const) ;

__attribute__((used)) static bool str_is_build_id(const char *maybe_sbuild_id, size_t len)
{
 size_t i;

 for (i = 0; i < len; i++) {
  if (!isxdigit(maybe_sbuild_id[i]))
   return 0;
 }
 return 1;
}
