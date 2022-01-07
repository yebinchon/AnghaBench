
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __expand_string (char const**,int ,int ,int *) ;
 int is_end_of_token ;

char *expand_one_token(const char **str)
{
 return __expand_string(str, is_end_of_token, 0, ((void*)0));
}
