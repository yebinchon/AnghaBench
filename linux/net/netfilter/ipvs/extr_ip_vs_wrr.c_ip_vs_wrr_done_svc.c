
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_wrr_mark {int dummy; } ;
struct ip_vs_service {struct ip_vs_wrr_mark* sched_data; } ;


 int kfree_rcu (struct ip_vs_wrr_mark*,int ) ;
 int rcu_head ;

__attribute__((used)) static void ip_vs_wrr_done_svc(struct ip_vs_service *svc)
{
 struct ip_vs_wrr_mark *mark = svc->sched_data;




 kfree_rcu(mark, rcu_head);
}
