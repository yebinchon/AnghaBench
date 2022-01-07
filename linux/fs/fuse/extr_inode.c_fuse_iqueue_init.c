
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_iqueue_ops {int dummy; } ;
struct fuse_iqueue {int connected; void* priv; struct fuse_iqueue_ops const* ops; int forget_list_head; int * forget_list_tail; int interrupts; int pending; int waitq; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 int memset (struct fuse_iqueue*,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void fuse_iqueue_init(struct fuse_iqueue *fiq,
        const struct fuse_iqueue_ops *ops,
        void *priv)
{
 memset(fiq, 0, sizeof(struct fuse_iqueue));
 spin_lock_init(&fiq->lock);
 init_waitqueue_head(&fiq->waitq);
 INIT_LIST_HEAD(&fiq->pending);
 INIT_LIST_HEAD(&fiq->interrupts);
 fiq->forget_list_tail = &fiq->forget_list_head;
 fiq->connected = 1;
 fiq->ops = ops;
 fiq->priv = priv;
}
