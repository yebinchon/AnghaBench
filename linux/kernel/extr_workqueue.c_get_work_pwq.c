
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int data; } ;
typedef void pool_workqueue ;


 unsigned long WORK_STRUCT_PWQ ;
 unsigned long WORK_STRUCT_WQ_DATA_MASK ;
 unsigned long atomic_long_read (int *) ;

__attribute__((used)) static struct pool_workqueue *get_work_pwq(struct work_struct *work)
{
 unsigned long data = atomic_long_read(&work->data);

 if (data & WORK_STRUCT_PWQ)
  return (void *)(data & WORK_STRUCT_WQ_DATA_MASK);
 else
  return ((void*)0);
}
