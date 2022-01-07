
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;
struct bpf_dtab {int n_buckets; struct hlist_head* dev_index_head; } ;



__attribute__((used)) static inline struct hlist_head *dev_map_index_hash(struct bpf_dtab *dtab,
          int idx)
{
 return &dtab->dev_index_head[idx & (dtab->n_buckets - 1)];
}
