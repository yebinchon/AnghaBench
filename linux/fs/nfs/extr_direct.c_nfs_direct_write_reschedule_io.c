
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
struct TYPE_3__ {int committed; } ;
struct nfs_pgio_header {TYPE_2__ args; int good_bytes; TYPE_1__ verf; struct nfs_direct_req* dreq; } ;
struct nfs_direct_req {scalar_t__ error; int lock; int flags; } ;


 int NFS_ODIRECT_RESCHED_WRITES ;
 int NFS_UNSTABLE ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfs_direct_write_reschedule_io(struct nfs_pgio_header *hdr)
{
 struct nfs_direct_req *dreq = hdr->dreq;

 spin_lock(&dreq->lock);
 if (dreq->error == 0) {
  dreq->flags = NFS_ODIRECT_RESCHED_WRITES;

  hdr->verf.committed = NFS_UNSTABLE;
  hdr->good_bytes = hdr->args.count;
 }
 spin_unlock(&dreq->lock);
}
