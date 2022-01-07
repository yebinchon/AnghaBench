
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netns_ipvs {int dummy; } ;


 int EnterFunction (int) ;
 int LeaveFunction (int) ;
 int __ip_vs_mutex ;
 int ip_vs_flush (struct netns_ipvs*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ip_vs_service_net_cleanup(struct netns_ipvs *ipvs)
{
 EnterFunction(2);

 mutex_lock(&__ip_vs_mutex);
 ip_vs_flush(ipvs, 1);
 mutex_unlock(&__ip_vs_mutex);
 LeaveFunction(2);
}
