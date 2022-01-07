
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct stats_record* cpu; } ;
struct stats_record {TYPE_1__ stats; struct stats_record* rxq; struct stats_record* cpu; } ;
struct TYPE_4__ {unsigned int max_entries; } ;


 TYPE_2__* bpf_map__def (int ) ;
 int free (struct stats_record*) ;
 int rx_queue_index_map ;

__attribute__((used)) static void free_stats_record(struct stats_record *r)
{
 unsigned int nr_rxqs = bpf_map__def(rx_queue_index_map)->max_entries;
 int i;

 for (i = 0; i < nr_rxqs; i++)
  free(r->rxq[i].cpu);

 free(r->rxq);
 free(r->stats.cpu);
 free(r);
}
