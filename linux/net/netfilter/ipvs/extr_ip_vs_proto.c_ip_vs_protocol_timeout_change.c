
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netns_ipvs {struct ip_vs_proto_data** proto_data_table; } ;
struct ip_vs_proto_data {TYPE_1__* pp; struct ip_vs_proto_data* next; } ;
struct TYPE_2__ {int (* timeout_change ) (struct ip_vs_proto_data*,int) ;} ;


 int IP_VS_PROTO_TAB_SIZE ;
 int stub1 (struct ip_vs_proto_data*,int) ;

void ip_vs_protocol_timeout_change(struct netns_ipvs *ipvs, int flags)
{
 struct ip_vs_proto_data *pd;
 int i;

 for (i = 0; i < IP_VS_PROTO_TAB_SIZE; i++) {
  for (pd = ipvs->proto_data_table[i]; pd; pd = pd->next) {
   if (pd->pp->timeout_change)
    pd->pp->timeout_change(pd, flags);
  }
 }
}
