
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ethhdr {int h_proto; } ;
struct TYPE_2__ {int num_want_all_ipv6; int num_want_all_ipv4; } ;
struct batadv_priv {TYPE_1__ mcast; } ;




 int atomic_read (int *) ;
 int ntohs (int ) ;

__attribute__((used)) static int batadv_mcast_forw_want_all_ip_count(struct batadv_priv *bat_priv,
            struct ethhdr *ethhdr)
{
 switch (ntohs(ethhdr->h_proto)) {
 case 129:
  return atomic_read(&bat_priv->mcast.num_want_all_ipv4);
 case 128:
  return atomic_read(&bat_priv->mcast.num_want_all_ipv6);
 default:

  return 0;
 }
}
