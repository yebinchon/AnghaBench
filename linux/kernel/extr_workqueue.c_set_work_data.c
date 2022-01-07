
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int data; } ;


 int WARN_ON_ONCE (int) ;
 int atomic_long_set (int *,unsigned long) ;
 int work_pending (struct work_struct*) ;
 unsigned long work_static (struct work_struct*) ;

__attribute__((used)) static inline void set_work_data(struct work_struct *work, unsigned long data,
     unsigned long flags)
{
 WARN_ON_ONCE(!work_pending(work));
 atomic_long_set(&work->data, data | flags | work_static(work));
}
