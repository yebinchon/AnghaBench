
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct fuse_dev* processing; } ;
struct fuse_dev {TYPE_1__ pq; int entry; struct fuse_conn* fc; } ;
struct fuse_conn {int lock; } ;


 int fuse_conn_put (struct fuse_conn*) ;
 int kfree (struct fuse_dev*) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void fuse_dev_free(struct fuse_dev *fud)
{
 struct fuse_conn *fc = fud->fc;

 if (fc) {
  spin_lock(&fc->lock);
  list_del(&fud->entry);
  spin_unlock(&fc->lock);

  fuse_conn_put(fc);
 }
 kfree(fud->pq.processing);
 kfree(fud);
}
