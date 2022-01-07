
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 unsigned long WORK_OFFQ_POOL_SHIFT ;
 int WORK_STRUCT_PENDING ;
 int set_work_data (struct work_struct*,unsigned long,int ) ;

__attribute__((used)) static void set_work_pool_and_keep_pending(struct work_struct *work,
        int pool_id)
{
 set_work_data(work, (unsigned long)pool_id << WORK_OFFQ_POOL_SHIFT,
        WORK_STRUCT_PENDING);
}
