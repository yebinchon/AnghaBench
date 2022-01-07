
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_region {int hr_nego_timeout_work; int hr_write_timeout_work; } ;


 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static void o2hb_disarm_timeout(struct o2hb_region *reg)
{
 cancel_delayed_work_sync(&reg->hr_write_timeout_work);
 cancel_delayed_work_sync(&reg->hr_nego_timeout_work);
}
