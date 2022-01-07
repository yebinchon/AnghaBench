
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_argv {int * value; int index; } ;


 scalar_t__ TOMOYO_VALUE_TYPE_DECIMAL ;
 int * tomoyo_get_dqword (char*) ;
 scalar_t__ tomoyo_parse_ulong (int *,char**) ;

__attribute__((used)) static bool tomoyo_parse_argv(char *left, char *right,
         struct tomoyo_argv *argv)
{
 if (tomoyo_parse_ulong(&argv->index, &left) !=
     TOMOYO_VALUE_TYPE_DECIMAL || *left++ != ']' || *left)
  return 0;
 argv->value = tomoyo_get_dqword(right);
 return argv->value != ((void*)0);
}
