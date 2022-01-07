
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct fuse_pqueue {int lock; int * processing; int io; } ;
struct fuse_dev {struct fuse_pqueue pq; struct fuse_conn* fc; } ;
struct TYPE_2__ {int * fasync; } ;
struct fuse_conn {TYPE_1__ iq; int dev_count; } ;
struct file {int dummy; } ;


 unsigned int FUSE_PQ_HASH_SIZE ;
 int LIST_HEAD (int ) ;
 int WARN_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int end_requests (struct fuse_conn*,int *) ;
 int fuse_abort_conn (struct fuse_conn*) ;
 int fuse_dev_free (struct fuse_dev*) ;
 struct fuse_dev* fuse_get_dev (struct file*) ;
 int list_empty (int *) ;
 int list_splice_init (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int to_end ;

int fuse_dev_release(struct inode *inode, struct file *file)
{
 struct fuse_dev *fud = fuse_get_dev(file);

 if (fud) {
  struct fuse_conn *fc = fud->fc;
  struct fuse_pqueue *fpq = &fud->pq;
  LIST_HEAD(to_end);
  unsigned int i;

  spin_lock(&fpq->lock);
  WARN_ON(!list_empty(&fpq->io));
  for (i = 0; i < FUSE_PQ_HASH_SIZE; i++)
   list_splice_init(&fpq->processing[i], &to_end);
  spin_unlock(&fpq->lock);

  end_requests(fc, &to_end);


  if (atomic_dec_and_test(&fc->dev_count)) {
   WARN_ON(fc->iq.fasync != ((void*)0));
   fuse_abort_conn(fc);
  }
  fuse_dev_free(fud);
 }
 return 0;
}
