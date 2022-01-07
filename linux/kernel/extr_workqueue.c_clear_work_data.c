
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int WORK_STRUCT_NO_POOL ;
 int set_work_data (struct work_struct*,int ,int ) ;
 int smp_wmb () ;

__attribute__((used)) static void clear_work_data(struct work_struct *work)
{
 smp_wmb();
 set_work_data(work, WORK_STRUCT_NO_POOL, 0);
}
