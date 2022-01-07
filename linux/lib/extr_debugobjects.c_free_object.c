
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_obj {int dummy; } ;


 int ODEBUG_FREE_WORK_DELAY ;
 int WRITE_ONCE (int ,int) ;
 int __free_object (struct debug_obj*) ;
 int debug_obj_work ;
 int obj_freeing ;
 scalar_t__ obj_nr_tofree ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void free_object(struct debug_obj *obj)
{
 __free_object(obj);
 if (!obj_freeing && obj_nr_tofree) {
  WRITE_ONCE(obj_freeing, 1);
  schedule_delayed_work(&debug_obj_work, ODEBUG_FREE_WORK_DELAY);
 }
}
