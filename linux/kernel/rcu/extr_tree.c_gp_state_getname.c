
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 short ARRAY_SIZE (char const**) ;
 char const** gp_state_names ;

__attribute__((used)) static const char *gp_state_getname(short gs)
{
 if (gs < 0 || gs >= ARRAY_SIZE(gp_state_names))
  return "???";
 return gp_state_names[gs];
}
