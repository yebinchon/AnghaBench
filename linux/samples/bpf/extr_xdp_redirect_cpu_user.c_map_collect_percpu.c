
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* issue; void* dropped; void* processed; } ;
struct record {TYPE_2__ total; TYPE_1__* cpu; int timestamp; } ;
struct datarec {scalar_t__ issue; scalar_t__ dropped; scalar_t__ processed; } ;
typedef void* __u64 ;
typedef int __u32 ;
struct TYPE_3__ {scalar_t__ issue; scalar_t__ dropped; scalar_t__ processed; } ;


 scalar_t__ bpf_map_lookup_elem (int,int*,struct datarec*) ;
 unsigned int bpf_num_possible_cpus () ;
 int fprintf (int ,char*,int) ;
 int gettime () ;
 int stderr ;

__attribute__((used)) static bool map_collect_percpu(int fd, __u32 key, struct record *rec)
{

 unsigned int nr_cpus = bpf_num_possible_cpus();
 struct datarec values[nr_cpus];
 __u64 sum_processed = 0;
 __u64 sum_dropped = 0;
 __u64 sum_issue = 0;
 int i;

 if ((bpf_map_lookup_elem(fd, &key, values)) != 0) {
  fprintf(stderr,
   "ERR: bpf_map_lookup_elem failed key:0x%X\n", key);
  return 0;
 }

 rec->timestamp = gettime();


 for (i = 0; i < nr_cpus; i++) {
  rec->cpu[i].processed = values[i].processed;
  sum_processed += values[i].processed;
  rec->cpu[i].dropped = values[i].dropped;
  sum_dropped += values[i].dropped;
  rec->cpu[i].issue = values[i].issue;
  sum_issue += values[i].issue;
 }
 rec->total.processed = sum_processed;
 rec->total.dropped = sum_dropped;
 rec->total.issue = sum_issue;
 return 1;
}
