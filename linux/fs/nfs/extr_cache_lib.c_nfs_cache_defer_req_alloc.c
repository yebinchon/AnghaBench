
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int defer; } ;
struct nfs_cache_defer_req {TYPE_1__ req; int count; int completion; } ;


 int GFP_KERNEL ;
 int init_completion (int *) ;
 struct nfs_cache_defer_req* kzalloc (int,int ) ;
 int nfs_dns_cache_defer ;
 int refcount_set (int *,int) ;

struct nfs_cache_defer_req *nfs_cache_defer_req_alloc(void)
{
 struct nfs_cache_defer_req *dreq;

 dreq = kzalloc(sizeof(*dreq), GFP_KERNEL);
 if (dreq) {
  init_completion(&dreq->completion);
  refcount_set(&dreq->count, 1);
  dreq->req.defer = nfs_dns_cache_defer;
 }
 return dreq;
}
