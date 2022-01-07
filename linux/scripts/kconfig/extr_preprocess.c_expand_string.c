
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* expand_string_with_args (char const*,int ,int *) ;

__attribute__((used)) static char *expand_string(const char *in)
{
 return expand_string_with_args(in, 0, ((void*)0));
}
