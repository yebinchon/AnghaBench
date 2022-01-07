
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_direct_req {scalar_t__ count; int completion; TYPE_1__* iocb; scalar_t__ error; struct inode* inode; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int (* ki_complete ) (TYPE_1__*,long,int ) ;} ;


 int WARN_ON_ONCE (int) ;
 int complete (int *) ;
 int inode_dio_end (struct inode*) ;
 int nfs_direct_req_release (struct nfs_direct_req*) ;
 int stub1 (TYPE_1__*,long,int ) ;

__attribute__((used)) static void nfs_direct_complete(struct nfs_direct_req *dreq)
{
 struct inode *inode = dreq->inode;

 inode_dio_end(inode);

 if (dreq->iocb) {
  long res = (long) dreq->error;
  if (dreq->count != 0) {
   res = (long) dreq->count;
   WARN_ON_ONCE(dreq->count < 0);
  }
  dreq->iocb->ki_complete(dreq->iocb, res, 0);
 }

 complete(&dreq->completion);

 nfs_direct_req_release(dreq);
}
