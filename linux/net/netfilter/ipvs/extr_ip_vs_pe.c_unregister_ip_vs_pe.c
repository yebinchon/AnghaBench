
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_pe {int name; int n_list; } ;


 int ip_vs_pe_mutex ;
 int ip_vs_use_count_dec () ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,int ) ;

int unregister_ip_vs_pe(struct ip_vs_pe *pe)
{
 mutex_lock(&ip_vs_pe_mutex);

 list_del_rcu(&pe->n_list);
 mutex_unlock(&ip_vs_pe_mutex);


 ip_vs_use_count_dec();

 pr_info("[%s] pe unregistered.\n", pe->name);

 return 0;
}
