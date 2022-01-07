
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int wm8996_get_retune_mobile_block(const char *name)
{
 if (strcmp(name, "DSP1 EQ Mode") == 0)
  return 0;
 if (strcmp(name, "DSP2 EQ Mode") == 0)
  return 1;
 return -EINVAL;
}
