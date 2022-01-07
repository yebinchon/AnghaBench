
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __expand_string (char const**,int ,int,char**) ;
 int is_end_of_str ;

__attribute__((used)) static char *expand_string_with_args(const char *in, int argc, char *argv[])
{
 return __expand_string(&in, is_end_of_str, argc, argv);
}
