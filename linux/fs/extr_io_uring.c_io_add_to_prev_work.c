
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_kiocb {int flags; int list; } ;
struct async_list {int lock; int cnt; int list; } ;


 int REQ_F_SEQ_PREV ;
 int atomic_read (int *) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int smp_mb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool io_add_to_prev_work(struct async_list *list, struct io_kiocb *req)
{
 bool ret;

 if (!list)
  return 0;
 if (!(req->flags & REQ_F_SEQ_PREV))
  return 0;
 if (!atomic_read(&list->cnt))
  return 0;

 ret = 1;
 spin_lock(&list->lock);
 list_add_tail(&req->list, &list->list);



 smp_mb();
 if (!atomic_read(&list->cnt)) {
  list_del_init(&req->list);
  ret = 0;
 }
 spin_unlock(&list->lock);
 return ret;
}
