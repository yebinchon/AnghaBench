
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {scalar_t__ sec_idx; int sec_offset; } ;



__attribute__((used)) static int compare_bpf_map(const void *_a, const void *_b)
{
 const struct bpf_map *a = _a;
 const struct bpf_map *b = _b;

 if (a->sec_idx != b->sec_idx)
  return a->sec_idx - b->sec_idx;
 return a->sec_offset - b->sec_offset;
}
