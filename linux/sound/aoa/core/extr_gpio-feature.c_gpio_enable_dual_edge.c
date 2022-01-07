
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMAC_FTR_READ_GPIO ;
 int PMAC_FTR_WRITE_GPIO ;
 int pmac_call_feature (int ,int *,int,int) ;

__attribute__((used)) static void gpio_enable_dual_edge(int gpio)
{
 int v;

 if (gpio == -1)
  return;
 v = pmac_call_feature(PMAC_FTR_READ_GPIO, ((void*)0), gpio, 0);
 v |= 0x80;
 pmac_call_feature(PMAC_FTR_WRITE_GPIO, ((void*)0), gpio, v);
}
