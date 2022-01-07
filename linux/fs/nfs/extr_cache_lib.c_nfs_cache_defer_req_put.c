
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_cache_defer_req {int count; } ;


 int kfree (struct nfs_cache_defer_req*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void nfs_cache_defer_req_put(struct nfs_cache_defer_req *dreq)
{
 if (refcount_dec_and_test(&dreq->count))
  kfree(dreq);
}
