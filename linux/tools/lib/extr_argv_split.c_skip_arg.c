
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char const) ;

__attribute__((used)) static const char *skip_arg(const char *cp)
{
 while (*cp && !isspace(*cp))
  cp++;

 return cp;
}
