
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ksym {int name; } ;
struct ipcount {int dummy; } ;
typedef scalar_t__ __u64 ;
typedef int __u32 ;
struct TYPE_3__ {int count; scalar_t__ ip; } ;


 int MAX_IPS ;
 scalar_t__ PAGE_OFFSET ;
 scalar_t__ bpf_map_get_next_key (int,scalar_t__*,scalar_t__*) ;
 int bpf_map_lookup_elem (int,scalar_t__*,int *) ;
 int count_cmp ;
 TYPE_1__* counts ;
 struct ksym* ksym_search (scalar_t__) ;
 int printf (char*,...) ;
 int qsort (TYPE_1__*,int,int,int ) ;

__attribute__((used)) static void print_ip_map(int fd)
{
 struct ksym *sym;
 __u64 key, next_key;
 __u32 value;
 int i, max;

 printf("%-19s %-32s %s\n", "ADDR", "KSYM", "COUNT");


 key = 0, i = 0;
 while (bpf_map_get_next_key(fd, &key, &next_key) == 0) {
  bpf_map_lookup_elem(fd, &next_key, &value);
  counts[i].ip = next_key;
  counts[i++].count = value;
  key = next_key;
 }
 max = i;


 qsort(counts, max, sizeof(struct ipcount), count_cmp);
 for (i = 0; i < max; i++) {
  if (counts[i].ip > PAGE_OFFSET) {
   sym = ksym_search(counts[i].ip);
   if (!sym) {
    printf("ksym not found. Is kallsyms loaded?\n");
    continue;
   }

   printf("0x%-17llx %-32s %u\n", counts[i].ip, sym->name,
          counts[i].count);
  } else {
   printf("0x%-17llx %-32s %u\n", counts[i].ip, "(user)",
          counts[i].count);
  }
 }

 if (max == MAX_IPS) {
  printf("WARNING: IP hash was full (max %d entries); ", max);
  printf("may have dropped samples\n");
 }
}
