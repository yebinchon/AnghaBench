
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {int flags; int count; int waitq; int intr_entry; int list; } ;


 int FR_PENDING ;
 int INIT_LIST_HEAD (int *) ;
 int __set_bit (int ,int *) ;
 int init_waitqueue_head (int *) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static void fuse_request_init(struct fuse_req *req)
{
 INIT_LIST_HEAD(&req->list);
 INIT_LIST_HEAD(&req->intr_entry);
 init_waitqueue_head(&req->waitq);
 refcount_set(&req->count, 1);
 __set_bit(FR_PENDING, &req->flags);
}
