
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool is_world_regdom(const char *alpha2)
{
 if (!alpha2)
  return 0;
 return alpha2[0] == '0' && alpha2[1] == '0';
}
