
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 unsigned long WORK_OFFQ_POOL_SHIFT ;
 int set_work_data (struct work_struct*,unsigned long,int ) ;
 int smp_mb () ;
 int smp_wmb () ;

__attribute__((used)) static void set_work_pool_and_clear_pending(struct work_struct *work,
         int pool_id)
{






 smp_wmb();
 set_work_data(work, (unsigned long)pool_id << WORK_OFFQ_POOL_SHIFT, 0);
 smp_mb();
}
