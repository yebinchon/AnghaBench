
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dst; scalar_t__ src; } ;
struct TYPE_5__ {scalar_t__ proto; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct sw_flow_key {TYPE_3__ tp; TYPE_2__ ip; TYPE_1__ eth; } ;


 int ETH_P_IPV6 ;
 int NDISC_NEIGHBOUR_ADVERTISEMENT ;
 int NDISC_NEIGHBOUR_SOLICITATION ;
 scalar_t__ NEXTHDR_ICMP ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static inline bool sw_flow_key_is_nd(const struct sw_flow_key *key)
{
 return key->eth.type == htons(ETH_P_IPV6) &&
  key->ip.proto == NEXTHDR_ICMP &&
  key->tp.dst == 0 &&
  (key->tp.src == htons(NDISC_NEIGHBOUR_SOLICITATION) ||
   key->tp.src == htons(NDISC_NEIGHBOUR_ADVERTISEMENT));
}
