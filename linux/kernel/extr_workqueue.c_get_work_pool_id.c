
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int data; } ;
struct pool_workqueue {TYPE_1__* pool; } ;
struct TYPE_2__ {int id; } ;


 unsigned long WORK_OFFQ_POOL_SHIFT ;
 unsigned long WORK_STRUCT_PWQ ;
 unsigned long WORK_STRUCT_WQ_DATA_MASK ;
 unsigned long atomic_long_read (int *) ;

__attribute__((used)) static int get_work_pool_id(struct work_struct *work)
{
 unsigned long data = atomic_long_read(&work->data);

 if (data & WORK_STRUCT_PWQ)
  return ((struct pool_workqueue *)
   (data & WORK_STRUCT_WQ_DATA_MASK))->pool->id;

 return data >> WORK_OFFQ_POOL_SHIFT;
}
