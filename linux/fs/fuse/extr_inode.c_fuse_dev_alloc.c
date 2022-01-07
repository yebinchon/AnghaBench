
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_2__ {struct list_head* processing; } ;
struct fuse_dev {TYPE_1__ pq; } ;


 int FUSE_PQ_HASH_SIZE ;
 int GFP_KERNEL ;
 int fuse_pqueue_init (TYPE_1__*) ;
 struct list_head* kcalloc (int ,int,int ) ;
 int kfree (struct fuse_dev*) ;
 struct fuse_dev* kzalloc (int,int ) ;

struct fuse_dev *fuse_dev_alloc(void)
{
 struct fuse_dev *fud;
 struct list_head *pq;

 fud = kzalloc(sizeof(struct fuse_dev), GFP_KERNEL);
 if (!fud)
  return ((void*)0);

 pq = kcalloc(FUSE_PQ_HASH_SIZE, sizeof(struct list_head), GFP_KERNEL);
 if (!pq) {
  kfree(fud);
  return ((void*)0);
 }

 fud->pq.processing = pq;
 fuse_pqueue_init(&fud->pq);

 return fud;
}
