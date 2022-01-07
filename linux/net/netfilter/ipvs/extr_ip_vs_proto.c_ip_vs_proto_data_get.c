
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netns_ipvs {struct ip_vs_proto_data** proto_data_table; } ;
struct ip_vs_proto_data {TYPE_1__* pp; struct ip_vs_proto_data* next; } ;
struct TYPE_2__ {unsigned short protocol; } ;


 unsigned int IP_VS_PROTO_HASH (unsigned short) ;

struct ip_vs_proto_data *
ip_vs_proto_data_get(struct netns_ipvs *ipvs, unsigned short proto)
{
 struct ip_vs_proto_data *pd;
 unsigned int hash = IP_VS_PROTO_HASH(proto);

 for (pd = ipvs->proto_data_table[hash]; pd; pd = pd->next) {
  if (pd->pp->protocol == proto)
   return pd;
 }

 return ((void*)0);
}
