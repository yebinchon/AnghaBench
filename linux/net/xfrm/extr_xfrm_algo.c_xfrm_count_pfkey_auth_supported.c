
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pfkey_supported; scalar_t__ available; } ;


 int aalg_entries () ;
 TYPE_1__* aalg_list ;

int xfrm_count_pfkey_auth_supported(void)
{
 int i, n;

 for (i = 0, n = 0; i < aalg_entries(); i++)
  if (aalg_list[i].available && aalg_list[i].pfkey_supported)
   n++;
 return n;
}
