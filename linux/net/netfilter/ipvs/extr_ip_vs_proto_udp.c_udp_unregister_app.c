
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netns_ipvs {int dummy; } ;
struct ip_vs_proto_data {int appcnt; } ;
struct ip_vs_app {int p_list; } ;


 int IPPROTO_UDP ;
 int atomic_dec (int *) ;
 struct ip_vs_proto_data* ip_vs_proto_data_get (struct netns_ipvs*,int ) ;
 int list_del_rcu (int *) ;

__attribute__((used)) static void
udp_unregister_app(struct netns_ipvs *ipvs, struct ip_vs_app *inc)
{
 struct ip_vs_proto_data *pd = ip_vs_proto_data_get(ipvs, IPPROTO_UDP);

 atomic_dec(&pd->appcnt);
 list_del_rcu(&inc->p_list);
}
