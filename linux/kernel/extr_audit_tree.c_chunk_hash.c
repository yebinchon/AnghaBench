
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 unsigned long HASH_SIZE ;
 unsigned long L1_CACHE_BYTES ;
 struct list_head* chunk_hash_heads ;

__attribute__((used)) static inline struct list_head *chunk_hash(unsigned long key)
{
 unsigned long n = key / L1_CACHE_BYTES;
 return chunk_hash_heads + n % HASH_SIZE;
}
