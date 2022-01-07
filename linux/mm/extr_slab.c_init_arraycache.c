
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct array_cache {int limit; int batchcount; scalar_t__ touched; scalar_t__ avail; } ;



__attribute__((used)) static void init_arraycache(struct array_cache *ac, int limit, int batch)
{
 if (ac) {
  ac->avail = 0;
  ac->limit = limit;
  ac->batchcount = batch;
  ac->touched = 0;
 }
}
