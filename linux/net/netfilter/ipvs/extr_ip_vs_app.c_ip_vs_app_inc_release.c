
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netns_ipvs {int dummy; } ;
struct ip_vs_protocol {int name; int (* unregister_app ) (struct netns_ipvs*,struct ip_vs_app*) ;} ;
struct ip_vs_app {int rcu_head; int a_list; int port; int name; int protocol; } ;


 int IP_VS_DBG (int,char*,int ,int ,int ) ;
 int call_rcu (int *,int ) ;
 int ip_vs_app_inc_rcu_free ;
 struct ip_vs_protocol* ip_vs_proto_get (int ) ;
 int list_del (int *) ;
 int ntohs (int ) ;
 int stub1 (struct netns_ipvs*,struct ip_vs_app*) ;

__attribute__((used)) static void
ip_vs_app_inc_release(struct netns_ipvs *ipvs, struct ip_vs_app *inc)
{
 struct ip_vs_protocol *pp;

 if (!(pp = ip_vs_proto_get(inc->protocol)))
  return;

 if (pp->unregister_app)
  pp->unregister_app(ipvs, inc);

 IP_VS_DBG(9, "%s App %s:%u unregistered\n",
    pp->name, inc->name, ntohs(inc->port));

 list_del(&inc->a_list);

 call_rcu(&inc->rcu_head, ip_vs_app_inc_rcu_free);
}
