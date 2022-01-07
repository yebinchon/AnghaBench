
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_obj_descr {int fixup_activate; scalar_t__ (* is_static_object ) (void*) ;} ;
struct debug_obj {void* object; int state; struct debug_obj_descr* descr; } ;
struct debug_bucket {int lock; } ;
typedef enum debug_obj_state { ____Placeholder_debug_obj_state } debug_obj_state ;


 int EINVAL ;




 int ODEBUG_STATE_NOTAVAILABLE ;
 int debug_object_fixup (int ,void*,int) ;
 int debug_object_init (void*,struct debug_obj_descr*) ;
 int debug_objects_enabled ;
 int debug_print_object (struct debug_obj*,char*) ;
 struct debug_bucket* get_bucket (unsigned long) ;
 struct debug_obj* lookup_object (void*,struct debug_bucket*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ stub1 (void*) ;

int debug_object_activate(void *addr, struct debug_obj_descr *descr)
{
 enum debug_obj_state state;
 struct debug_bucket *db;
 struct debug_obj *obj;
 unsigned long flags;
 int ret;
 struct debug_obj o = { .object = addr,
          .state = ODEBUG_STATE_NOTAVAILABLE,
          .descr = descr };

 if (!debug_objects_enabled)
  return 0;

 db = get_bucket((unsigned long) addr);

 raw_spin_lock_irqsave(&db->lock, flags);

 obj = lookup_object(addr, db);
 if (obj) {
  bool print_object = 0;

  switch (obj->state) {
  case 128:
  case 129:
   obj->state = 131;
   ret = 0;
   break;

  case 131:
   state = obj->state;
   raw_spin_unlock_irqrestore(&db->lock, flags);
   debug_print_object(obj, "activate");
   ret = debug_object_fixup(descr->fixup_activate, addr, state);
   return ret ? 0 : -EINVAL;

  case 130:
   print_object = 1;
   ret = -EINVAL;
   break;
  default:
   ret = 0;
   break;
  }
  raw_spin_unlock_irqrestore(&db->lock, flags);
  if (print_object)
   debug_print_object(obj, "activate");
  return ret;
 }

 raw_spin_unlock_irqrestore(&db->lock, flags);
 if (descr->is_static_object && descr->is_static_object(addr)) {

  debug_object_init(addr, descr);
  debug_object_activate(addr, descr);
 } else {
  debug_print_object(&o, "activate");
  ret = debug_object_fixup(descr->fixup_activate, addr,
     ODEBUG_STATE_NOTAVAILABLE);
  return ret ? 0 : -EINVAL;
 }
 return 0;
}
