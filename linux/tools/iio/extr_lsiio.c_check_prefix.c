
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,scalar_t__) ;

__attribute__((used)) static inline int check_prefix(const char *str, const char *prefix)
{
 return strlen(str) > strlen(prefix) &&
        strncmp(str, prefix, strlen(prefix)) == 0;
}
