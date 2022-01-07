
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static inline bool strends(const char *str, const char *postfix)
{
 if (strlen(str) < strlen(postfix))
  return 0;

 return strcmp(str + strlen(str) - strlen(postfix), postfix) == 0;
}
