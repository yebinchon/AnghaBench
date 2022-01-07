
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_vs_service {int dummy; } ;
struct TYPE_2__ {int cpustats; } ;
struct ip_vs_dest {TYPE_1__ stats; int svc; } ;


 int __ip_vs_dst_cache_reset (struct ip_vs_dest*) ;
 int __ip_vs_svc_put (struct ip_vs_service*,int) ;
 int free_percpu (int ) ;
 int ip_vs_dest_put_and_free (struct ip_vs_dest*) ;
 struct ip_vs_service* rcu_dereference_protected (int ,int) ;

__attribute__((used)) static void ip_vs_dest_free(struct ip_vs_dest *dest)
{
 struct ip_vs_service *svc = rcu_dereference_protected(dest->svc, 1);

 __ip_vs_dst_cache_reset(dest);
 __ip_vs_svc_put(svc, 0);
 free_percpu(dest->stats.cpustats);
 ip_vs_dest_put_and_free(dest);
}
