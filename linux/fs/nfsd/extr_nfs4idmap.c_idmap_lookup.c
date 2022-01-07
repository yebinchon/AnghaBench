
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int rq_chandle; } ;
struct ent {int h; } ;
struct cache_detail {int dummy; } ;


 int ENOMEM ;
 int ETIMEDOUT ;
 int cache_check (struct cache_detail*,int *,int *) ;
 int cache_put (int *,struct cache_detail*) ;

__attribute__((used)) static int
idmap_lookup(struct svc_rqst *rqstp,
  struct ent *(*lookup_fn)(struct cache_detail *, struct ent *),
  struct ent *key, struct cache_detail *detail, struct ent **item)
{
 int ret;

 *item = lookup_fn(detail, key);
 if (!*item)
  return -ENOMEM;
 retry:
 ret = cache_check(detail, &(*item)->h, &rqstp->rq_chandle);

 if (ret == -ETIMEDOUT) {
  struct ent *prev_item = *item;
  *item = lookup_fn(detail, key);
  if (*item != prev_item)
   goto retry;
  cache_put(&(*item)->h, detail);
 }
 return ret;
}
