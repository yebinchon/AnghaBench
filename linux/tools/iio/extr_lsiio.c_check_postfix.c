
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static inline int check_postfix(const char *str, const char *postfix)
{
 return strlen(str) > strlen(postfix) &&
        strcmp(str + strlen(str) - strlen(postfix), postfix) == 0;
}
