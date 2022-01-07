
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct u64rec {scalar_t__ processed; } ;
struct TYPE_4__ {int processed; } ;
struct record_u64 {TYPE_2__ total; TYPE_1__* cpu; int timestamp; } ;
typedef int __u64 ;
typedef int __u32 ;
struct TYPE_3__ {scalar_t__ processed; } ;


 scalar_t__ bpf_map_lookup_elem (int,int*,struct u64rec*) ;
 unsigned int bpf_num_possible_cpus () ;
 int fprintf (int ,char*,int) ;
 int gettime () ;
 int stderr ;

__attribute__((used)) static bool map_collect_record_u64(int fd, __u32 key, struct record_u64 *rec)
{

 unsigned int nr_cpus = bpf_num_possible_cpus();
 struct u64rec values[nr_cpus];
 __u64 sum_total = 0;
 int i;

 if ((bpf_map_lookup_elem(fd, &key, values)) != 0) {
  fprintf(stderr,
   "ERR: bpf_map_lookup_elem failed key:0x%X\n", key);
  return 0;
 }

 rec->timestamp = gettime();


 for (i = 0; i < nr_cpus; i++) {
  rec->cpu[i].processed = values[i].processed;
  sum_total += values[i].processed;
 }
 rec->total.processed = sum_total;
 return 1;
}
