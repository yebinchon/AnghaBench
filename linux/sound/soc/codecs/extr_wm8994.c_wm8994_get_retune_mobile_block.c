
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int wm8994_get_retune_mobile_block(const char *name)
{
 if (strcmp(name, "AIF1.1 EQ Mode") == 0)
  return 0;
 if (strcmp(name, "AIF1.2 EQ Mode") == 0)
  return 1;
 if (strcmp(name, "AIF2 EQ Mode") == 0)
  return 2;
 return -EINVAL;
}
