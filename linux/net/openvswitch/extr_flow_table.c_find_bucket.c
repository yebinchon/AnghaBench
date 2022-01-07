
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct table_instance {int n_buckets; struct hlist_head* buckets; int hash_seed; } ;
struct hlist_head {int dummy; } ;


 int jhash_1word (int,int ) ;

__attribute__((used)) static struct hlist_head *find_bucket(struct table_instance *ti, u32 hash)
{
 hash = jhash_1word(hash, ti->hash_seed);
 return &ti->buckets[hash & (ti->n_buckets - 1)];
}
