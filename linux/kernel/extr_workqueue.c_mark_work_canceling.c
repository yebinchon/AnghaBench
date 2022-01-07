
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 unsigned long WORK_OFFQ_CANCELING ;
 unsigned long WORK_OFFQ_POOL_SHIFT ;
 int WORK_STRUCT_PENDING ;
 unsigned long get_work_pool_id (struct work_struct*) ;
 int set_work_data (struct work_struct*,unsigned long,int ) ;

__attribute__((used)) static void mark_work_canceling(struct work_struct *work)
{
 unsigned long pool_id = get_work_pool_id(work);

 pool_id <<= WORK_OFFQ_POOL_SHIFT;
 set_work_data(work, pool_id | WORK_OFFQ_CANCELING, WORK_STRUCT_PENDING);
}
