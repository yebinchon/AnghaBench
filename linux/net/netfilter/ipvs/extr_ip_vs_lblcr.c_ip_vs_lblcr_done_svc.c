
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {struct ip_vs_lblcr_table* sched_data; } ;
struct ip_vs_lblcr_table {int periodic_timer; } ;


 int IP_VS_DBG (int,char*,int) ;
 int del_timer_sync (int *) ;
 int ip_vs_lblcr_flush (struct ip_vs_service*) ;
 int kfree_rcu (struct ip_vs_lblcr_table*,int ) ;
 int rcu_head ;

__attribute__((used)) static void ip_vs_lblcr_done_svc(struct ip_vs_service *svc)
{
 struct ip_vs_lblcr_table *tbl = svc->sched_data;


 del_timer_sync(&tbl->periodic_timer);


 ip_vs_lblcr_flush(svc);


 kfree_rcu(tbl, rcu_head);
 IP_VS_DBG(6, "LBLCR hash table (memory=%zdbytes) released\n",
    sizeof(*tbl));
}
