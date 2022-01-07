
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_bucket {int dummy; } ;
struct dma_debug_entry {int dummy; } ;


 int ENOMEM ;
 int active_cacheline_insert (struct dma_debug_entry*) ;
 struct hash_bucket* get_hash_bucket (struct dma_debug_entry*,unsigned long*) ;
 int global_disable ;
 int hash_bucket_add (struct hash_bucket*,struct dma_debug_entry*) ;
 int pr_err (char*) ;
 int put_hash_bucket (struct hash_bucket*,unsigned long*) ;

__attribute__((used)) static void add_dma_entry(struct dma_debug_entry *entry)
{
 struct hash_bucket *bucket;
 unsigned long flags;
 int rc;

 bucket = get_hash_bucket(entry, &flags);
 hash_bucket_add(bucket, entry);
 put_hash_bucket(bucket, &flags);

 rc = active_cacheline_insert(entry);
 if (rc == -ENOMEM) {
  pr_err("cacheline tracking ENOMEM, dma-debug disabled\n");
  global_disable = 1;
 }




}
