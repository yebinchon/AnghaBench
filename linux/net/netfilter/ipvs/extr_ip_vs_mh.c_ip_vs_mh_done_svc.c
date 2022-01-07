
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {struct ip_vs_mh_state* sched_data; } ;
struct ip_vs_mh_state {int rcu_head; } ;
struct ip_vs_mh_lookup {int dummy; } ;


 int IP_VS_DBG (int,char*,int) ;
 int IP_VS_MH_TAB_SIZE ;
 int call_rcu (int *,int ) ;
 int ip_vs_mh_reset (struct ip_vs_mh_state*) ;
 int ip_vs_mh_state_free ;

__attribute__((used)) static void ip_vs_mh_done_svc(struct ip_vs_service *svc)
{
 struct ip_vs_mh_state *s = svc->sched_data;


 ip_vs_mh_reset(s);

 call_rcu(&s->rcu_head, ip_vs_mh_state_free);
 IP_VS_DBG(6, "MH lookup table (memory=%zdbytes) released\n",
    sizeof(struct ip_vs_mh_lookup) * IP_VS_MH_TAB_SIZE);
}
