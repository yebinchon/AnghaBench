
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
struct dso_cache {scalar_t__ data; scalar_t__ size; scalar_t__ offset; } ;
typedef scalar_t__ ssize_t ;


 int memcpy (int *,scalar_t__,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static ssize_t
dso_cache__memcpy(struct dso_cache *cache, u64 offset,
    u8 *data, u64 size)
{
 u64 cache_offset = offset - cache->offset;
 u64 cache_size = min(cache->size - cache_offset, size);

 memcpy(data, cache->data + cache_offset, cache_size);
 return cache_size;
}
