
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
struct kasan_free_meta {int dummy; } ;



__attribute__((used)) static inline void quarantine_put(struct kasan_free_meta *info,
    struct kmem_cache *cache) { }
