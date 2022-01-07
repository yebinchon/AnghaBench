
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int wb_flags; struct nfs_page* wb_head; } ;


 int PG_CONTENDED1 ;
 int PG_HEADLOCK ;
 int WARN_ON_ONCE (int) ;
 int clear_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;
 int test_bit (int ,int *) ;
 int wake_up_bit (int *,int ) ;

void
nfs_page_group_unlock(struct nfs_page *req)
{
 struct nfs_page *head = req->wb_head;

 WARN_ON_ONCE(head != head->wb_head);

 smp_mb__before_atomic();
 clear_bit(PG_HEADLOCK, &head->wb_flags);
 smp_mb__after_atomic();
 if (!test_bit(PG_CONTENDED1, &head->wb_flags))
  return;
 wake_up_bit(&head->wb_flags, PG_HEADLOCK);
}
