
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bpf_htab_bucket {int dummy; } ;
struct bpf_htab {int buckets_num; struct bpf_htab_bucket* buckets; } ;



__attribute__((used)) static struct bpf_htab_bucket *sock_hash_select_bucket(struct bpf_htab *htab,
             u32 hash)
{
 return &htab->buckets[hash & (htab->buckets_num - 1)];
}
