
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int async_put_work; int mm_count; } ;


 int INIT_WORK (int *,int ) ;
 int atomic_dec_and_test (int *) ;
 int mmdrop_async_fn ;
 int schedule_work (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void mmdrop_async(struct mm_struct *mm)
{
 if (unlikely(atomic_dec_and_test(&mm->mm_count))) {
  INIT_WORK(&mm->async_put_work, mmdrop_async_fn);
  schedule_work(&mm->async_put_work);
 }
}
