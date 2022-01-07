
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct record {int dummy; } ;
struct TYPE_2__ {unsigned int max_entries; } ;


 int EXIT_FAIL_MEM ;
 TYPE_1__* bpf_map__def (int ) ;
 int exit (int ) ;
 int fprintf (int ,char*,unsigned int) ;
 struct record* malloc (size_t) ;
 int memset (struct record*,int ,size_t) ;
 int rx_queue_index_map ;
 int stderr ;

__attribute__((used)) static struct record *alloc_record_per_rxq(void)
{
 unsigned int nr_rxqs = bpf_map__def(rx_queue_index_map)->max_entries;
 struct record *array;
 size_t size;

 size = sizeof(struct record) * nr_rxqs;
 array = malloc(size);
 memset(array, 0, size);
 if (!array) {
  fprintf(stderr, "Mem alloc error (nr_rxqs:%u)\n", nr_rxqs);
  exit(EXIT_FAIL_MEM);
 }
 return array;
}
