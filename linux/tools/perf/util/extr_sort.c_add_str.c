
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static inline char *add_str(char *p, const char *str)
{
 strcpy(p, str);
 return p + strlen(str);
}
