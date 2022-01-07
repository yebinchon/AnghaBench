
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bucket {int dummy; } ;
struct bpf_sk_storage_map {int bucket_log; struct bucket* buckets; } ;
struct bpf_sk_storage_elem {int dummy; } ;


 size_t hash_ptr (struct bpf_sk_storage_elem*,int ) ;

__attribute__((used)) static struct bucket *select_bucket(struct bpf_sk_storage_map *smap,
        struct bpf_sk_storage_elem *selem)
{
 return &smap->buckets[hash_ptr(selem, smap->bucket_log)];
}
