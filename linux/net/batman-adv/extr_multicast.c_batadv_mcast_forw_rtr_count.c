
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_want_all_rtr6; int num_want_all_rtr4; } ;
struct batadv_priv {TYPE_1__ mcast; } ;




 int atomic_read (int *) ;

__attribute__((used)) static int batadv_mcast_forw_rtr_count(struct batadv_priv *bat_priv,
           int protocol)
{
 switch (protocol) {
 case 129:
  return atomic_read(&bat_priv->mcast.num_want_all_rtr4);
 case 128:
  return atomic_read(&bat_priv->mcast.num_want_all_rtr6);
 default:
  return 0;
 }
}
