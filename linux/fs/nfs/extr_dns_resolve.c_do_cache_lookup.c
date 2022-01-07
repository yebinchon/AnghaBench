
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_dns_ent {int h; } ;
struct nfs_cache_defer_req {int req; } ;
struct cache_detail {int dummy; } ;


 int ENOMEM ;
 int cache_check (struct cache_detail*,int *,int *) ;
 struct nfs_dns_ent* nfs_dns_lookup (struct cache_detail*,struct nfs_dns_ent*) ;

__attribute__((used)) static int do_cache_lookup(struct cache_detail *cd,
  struct nfs_dns_ent *key,
  struct nfs_dns_ent **item,
  struct nfs_cache_defer_req *dreq)
{
 int ret = -ENOMEM;

 *item = nfs_dns_lookup(cd, key);
 if (*item) {
  ret = cache_check(cd, &(*item)->h, &dreq->req);
  if (ret)
   *item = ((void*)0);
 }
 return ret;
}
