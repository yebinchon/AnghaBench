
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* cpu; } ;
struct stats_record {TYPE_1__ stats; TYPE_3__* rxq; } ;
struct TYPE_6__ {void* cpu; } ;
struct TYPE_5__ {unsigned int max_entries; } ;


 int EXIT_FAIL_MEM ;
 void* alloc_record_per_cpu () ;
 TYPE_3__* alloc_record_per_rxq () ;
 TYPE_2__* bpf_map__def (int ) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 struct stats_record* malloc (int) ;
 int memset (struct stats_record*,int ,int) ;
 int rx_queue_index_map ;
 int stderr ;

__attribute__((used)) static struct stats_record *alloc_stats_record(void)
{
 unsigned int nr_rxqs = bpf_map__def(rx_queue_index_map)->max_entries;
 struct stats_record *rec;
 int i;

 rec = malloc(sizeof(*rec));
 memset(rec, 0, sizeof(*rec));
 if (!rec) {
  fprintf(stderr, "Mem alloc error\n");
  exit(EXIT_FAIL_MEM);
 }
 rec->rxq = alloc_record_per_rxq();
 for (i = 0; i < nr_rxqs; i++)
  rec->rxq[i].cpu = alloc_record_per_cpu();

 rec->stats.cpu = alloc_record_per_cpu();
 return rec;
}
