
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netns_ipvs {int est_lock; int est_list; } ;
struct ip_vs_estimator {int list; } ;
struct ip_vs_stats {struct ip_vs_estimator est; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ip_vs_start_estimator(struct netns_ipvs *ipvs, struct ip_vs_stats *stats)
{
 struct ip_vs_estimator *est = &stats->est;

 INIT_LIST_HEAD(&est->list);

 spin_lock_bh(&ipvs->est_lock);
 list_add(&est->list, &ipvs->est_list);
 spin_unlock_bh(&ipvs->est_lock);
}
