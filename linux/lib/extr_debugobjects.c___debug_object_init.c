
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_obj_descr {int fixup_init; } ;
struct debug_obj {int state; } ;
struct debug_bucket {int lock; } ;
typedef enum debug_obj_state { ____Placeholder_debug_obj_state } debug_obj_state ;







 struct debug_obj* alloc_object (void*,struct debug_bucket*,struct debug_obj_descr*) ;
 int debug_object_fixup (int ,void*,int) ;
 int debug_object_is_on_stack (void*,int) ;
 scalar_t__ debug_objects_enabled ;
 int debug_objects_oom () ;
 int debug_print_object (struct debug_obj*,char*) ;
 int fill_pool () ;
 struct debug_bucket* get_bucket (unsigned long) ;
 struct debug_obj* lookup_object (void*,struct debug_bucket*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
__debug_object_init(void *addr, struct debug_obj_descr *descr, int onstack)
{
 enum debug_obj_state state;
 bool check_stack = 0;
 struct debug_bucket *db;
 struct debug_obj *obj;
 unsigned long flags;

 fill_pool();

 db = get_bucket((unsigned long) addr);

 raw_spin_lock_irqsave(&db->lock, flags);

 obj = lookup_object(addr, db);
 if (!obj) {
  obj = alloc_object(addr, db, descr);
  if (!obj) {
   debug_objects_enabled = 0;
   raw_spin_unlock_irqrestore(&db->lock, flags);
   debug_objects_oom();
   return;
  }
  check_stack = 1;
 }

 switch (obj->state) {
 case 128:
 case 129:
 case 130:
  obj->state = 129;
  break;

 case 132:
  state = obj->state;
  raw_spin_unlock_irqrestore(&db->lock, flags);
  debug_print_object(obj, "init");
  debug_object_fixup(descr->fixup_init, addr, state);
  return;

 case 131:
  raw_spin_unlock_irqrestore(&db->lock, flags);
  debug_print_object(obj, "init");
  return;
 default:
  break;
 }

 raw_spin_unlock_irqrestore(&db->lock, flags);
 if (check_stack)
  debug_object_is_on_stack(addr, onstack);
}
