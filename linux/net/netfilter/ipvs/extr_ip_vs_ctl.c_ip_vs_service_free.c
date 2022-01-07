
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpustats; } ;
struct ip_vs_service {TYPE_1__ stats; } ;


 int free_percpu (int ) ;
 int kfree (struct ip_vs_service*) ;

__attribute__((used)) static void ip_vs_service_free(struct ip_vs_service *svc)
{
 free_percpu(svc->stats.cpustats);
 kfree(svc);
}
