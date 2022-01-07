
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int IN6_ADDR_GEN_MODE_EUI64 ;
 int IN6_ADDR_GEN_MODE_NONE ;
 int IN6_ADDR_GEN_MODE_RANDOM ;
 int IN6_ADDR_GEN_MODE_STABLE_PRIVACY ;

__attribute__((used)) static int check_addr_gen_mode(int mode)
{
 if (mode != IN6_ADDR_GEN_MODE_EUI64 &&
     mode != IN6_ADDR_GEN_MODE_NONE &&
     mode != IN6_ADDR_GEN_MODE_STABLE_PRIVACY &&
     mode != IN6_ADDR_GEN_MODE_RANDOM)
  return -EINVAL;
 return 1;
}
