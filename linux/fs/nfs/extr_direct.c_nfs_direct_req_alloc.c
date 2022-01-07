
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int committed; } ;
struct TYPE_4__ {int list; } ;
struct nfs_direct_req {int lock; int work; TYPE_1__ verf; TYPE_2__ mds_cinfo; int completion; int kref; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int NFS_INVALID_STABLE_HOW ;
 int init_completion (int *) ;
 struct nfs_direct_req* kmem_cache_zalloc (int ,int ) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 int nfs_direct_cachep ;
 int nfs_direct_write_schedule_work ;
 int spin_lock_init (int *) ;

__attribute__((used)) static inline struct nfs_direct_req *nfs_direct_req_alloc(void)
{
 struct nfs_direct_req *dreq;

 dreq = kmem_cache_zalloc(nfs_direct_cachep, GFP_KERNEL);
 if (!dreq)
  return ((void*)0);

 kref_init(&dreq->kref);
 kref_get(&dreq->kref);
 init_completion(&dreq->completion);
 INIT_LIST_HEAD(&dreq->mds_cinfo.list);
 dreq->verf.committed = NFS_INVALID_STABLE_HOW;
 INIT_WORK(&dreq->work, nfs_direct_write_schedule_work);
 spin_lock_init(&dreq->lock);

 return dreq;
}
