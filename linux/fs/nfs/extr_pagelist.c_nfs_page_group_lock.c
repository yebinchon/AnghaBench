
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int wb_flags; struct nfs_page* wb_head; } ;


 int PG_CONTENDED1 ;
 int PG_HEADLOCK ;
 int TASK_UNINTERRUPTIBLE ;
 int WARN_ON_ONCE (int) ;
 int set_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int test_and_set_bit (int ,int *) ;
 int wait_on_bit_lock (int *,int ,int ) ;

int
nfs_page_group_lock(struct nfs_page *req)
{
 struct nfs_page *head = req->wb_head;

 WARN_ON_ONCE(head != head->wb_head);

 if (!test_and_set_bit(PG_HEADLOCK, &head->wb_flags))
  return 0;

 set_bit(PG_CONTENDED1, &head->wb_flags);
 smp_mb__after_atomic();
 return wait_on_bit_lock(&head->wb_flags, PG_HEADLOCK,
    TASK_UNINTERRUPTIBLE);
}
