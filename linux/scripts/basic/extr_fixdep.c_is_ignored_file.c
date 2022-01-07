
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ str_ends_with (char const*,int,char*) ;

__attribute__((used)) static int is_ignored_file(const char *s, int len)
{
 return str_ends_with(s, len, "include/generated/autoconf.h") ||
        str_ends_with(s, len, "include/generated/autoksyms.h") ||
        str_ends_with(s, len, ".ver");
}
