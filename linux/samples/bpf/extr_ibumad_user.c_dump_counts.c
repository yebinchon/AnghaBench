
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u64 ;
typedef int __u32 ;


 scalar_t__ bpf_map_lookup_elem (int,int*,scalar_t__*) ;
 int printf (char*,int,...) ;

__attribute__((used)) static void dump_counts(int fd)
{
 __u32 key;
 __u64 value;

 for (key = 0; key < 256; key++) {
  if (bpf_map_lookup_elem(fd, &key, &value)) {
   printf("failed to read key %u\n", key);
   continue;
  }
  if (value)
   printf("0x%02x : %llu\n", key, value);
 }
}
