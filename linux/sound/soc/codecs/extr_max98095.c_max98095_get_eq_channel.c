
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int max98095_get_eq_channel(const char *name)
{
 if (strcmp(name, "EQ1 Mode") == 0)
  return 0;
 if (strcmp(name, "EQ2 Mode") == 0)
  return 1;
 return -EINVAL;
}
