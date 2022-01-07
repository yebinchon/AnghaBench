
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netns_ipvs {int est_lock; } ;
struct ip_vs_estimator {int list; } ;
struct ip_vs_stats {struct ip_vs_estimator est; } ;


 int list_del (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ip_vs_stop_estimator(struct netns_ipvs *ipvs, struct ip_vs_stats *stats)
{
 struct ip_vs_estimator *est = &stats->est;

 spin_lock_bh(&ipvs->est_lock);
 list_del(&est->list);
 spin_unlock_bh(&ipvs->est_lock);
}
