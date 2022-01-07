
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct stats_record* cpu; } ;
struct TYPE_7__ {struct stats_record* cpu; } ;
struct stats_record {TYPE_4__* xdp_cpumap_enqueue; TYPE_3__ xdp_devmap_xmit; TYPE_2__ xdp_cpumap_kthread; TYPE_1__* xdp_exception; TYPE_5__* xdp_redirect; } ;
struct TYPE_10__ {struct stats_record* cpu; } ;
struct TYPE_9__ {struct stats_record* cpu; } ;
struct TYPE_6__ {struct stats_record* cpu; } ;


 int MAX_CPUS ;
 int REDIR_RES_MAX ;
 int XDP_ACTION_MAX ;
 int free (struct stats_record*) ;

__attribute__((used)) static void free_stats_record(struct stats_record *r)
{
 int i;

 for (i = 0; i < REDIR_RES_MAX; i++)
  free(r->xdp_redirect[i].cpu);

 for (i = 0; i < XDP_ACTION_MAX; i++)
  free(r->xdp_exception[i].cpu);

 free(r->xdp_cpumap_kthread.cpu);
 free(r->xdp_devmap_xmit.cpu);

 for (i = 0; i < MAX_CPUS; i++)
  free(r->xdp_cpumap_enqueue[i].cpu);

 free(r);
}
