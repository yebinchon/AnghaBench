
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_sh_state {int dummy; } ;
struct ip_vs_sh_bucket {int dummy; } ;
struct ip_vs_service {struct ip_vs_sh_state* sched_data; } ;


 int IP_VS_DBG (int,char*,int) ;
 int IP_VS_SH_TAB_SIZE ;
 int ip_vs_sh_flush (struct ip_vs_sh_state*) ;
 int kfree_rcu (struct ip_vs_sh_state*,int ) ;
 int rcu_head ;

__attribute__((used)) static void ip_vs_sh_done_svc(struct ip_vs_service *svc)
{
 struct ip_vs_sh_state *s = svc->sched_data;


 ip_vs_sh_flush(s);


 kfree_rcu(s, rcu_head);
 IP_VS_DBG(6, "SH hash table (memory=%zdbytes) released\n",
    sizeof(struct ip_vs_sh_bucket)*IP_VS_SH_TAB_SIZE);
}
