
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_pqueue {int connected; int io; int * processing; int lock; } ;


 unsigned int FUSE_PQ_HASH_SIZE ;
 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void fuse_pqueue_init(struct fuse_pqueue *fpq)
{
 unsigned int i;

 spin_lock_init(&fpq->lock);
 for (i = 0; i < FUSE_PQ_HASH_SIZE; i++)
  INIT_LIST_HEAD(&fpq->processing[i]);
 INIT_LIST_HEAD(&fpq->io);
 fpq->connected = 1;
}
