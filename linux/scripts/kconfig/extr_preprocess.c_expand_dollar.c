
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* expand_dollar_with_args (char const**,int ,int *) ;

char *expand_dollar(const char **str)
{
 return expand_dollar_with_args(str, 0, ((void*)0));
}
