
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cls_fl_head {int handle_idr; } ;
struct cls_fl_filter {int refcnt; } ;


 struct cls_fl_filter* idr_find (int *,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int refcount_inc_not_zero (int *) ;

__attribute__((used)) static struct cls_fl_filter *__fl_get(struct cls_fl_head *head, u32 handle)
{
 struct cls_fl_filter *f;

 rcu_read_lock();
 f = idr_find(&head->handle_idr, handle);
 if (f && !refcount_inc_not_zero(&f->refcnt))
  f = ((void*)0);
 rcu_read_unlock();

 return f;
}
