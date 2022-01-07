
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netns_ipvs {int dummy; } ;
struct ip_vs_proto_data {int timeout_table; } ;


 int kfree (int ) ;

__attribute__((used)) static void __ip_vs_sctp_exit(struct netns_ipvs *ipvs, struct ip_vs_proto_data *pd)
{
 kfree(pd->timeout_table);
}
