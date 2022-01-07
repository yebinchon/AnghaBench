
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 int BPF_ANY ;
 scalar_t__ bpf_map_lookup_elem (int,scalar_t__*,scalar_t__*) ;
 scalar_t__ bpf_map_update_elem (int,scalar_t__*,scalar_t__*,int ) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static void verify_map(int map_id)
{
 __u32 key = 0;
 __u32 val;

 if (bpf_map_lookup_elem(map_id, &key, &val) != 0) {
  fprintf(stderr, "map_lookup failed: %s\n", strerror(errno));
  return;
 }
 if (val == 0) {
  fprintf(stderr, "failed: map #%d returns value 0\n", map_id);
  return;
 }
 val = 0;
 if (bpf_map_update_elem(map_id, &key, &val, BPF_ANY) != 0) {
  fprintf(stderr, "map_update failed: %s\n", strerror(errno));
  return;
 }
}
