
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stats_record {int * rxq; int stats; } ;
struct TYPE_2__ {int max_entries; } ;


 TYPE_1__* bpf_map__def (int ) ;
 int bpf_map__fd (int ) ;
 int map_collect_percpu (int,int,int *) ;
 int rx_queue_index_map ;
 int stats_global_map ;

__attribute__((used)) static void stats_collect(struct stats_record *rec)
{
 int fd, i, max_rxqs;

 fd = bpf_map__fd(stats_global_map);
 map_collect_percpu(fd, 0, &rec->stats);

 fd = bpf_map__fd(rx_queue_index_map);
 max_rxqs = bpf_map__def(rx_queue_index_map)->max_entries;
 for (i = 0; i < max_rxqs; i++)
  map_collect_percpu(fd, i, &rec->rxq[i]);
}
