
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_obj_descr {int fixup_assert_init; scalar_t__ (* is_static_object ) (void*) ;} ;
struct debug_obj {void* object; struct debug_obj_descr* descr; int state; } ;
struct debug_bucket {int lock; } ;


 int ODEBUG_STATE_NOTAVAILABLE ;
 int debug_object_fixup (int ,void*,int ) ;
 int debug_object_init (void*,struct debug_obj_descr*) ;
 int debug_objects_enabled ;
 int debug_print_object (struct debug_obj*,char*) ;
 struct debug_bucket* get_bucket (unsigned long) ;
 struct debug_obj* lookup_object (void*,struct debug_bucket*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ stub1 (void*) ;

void debug_object_assert_init(void *addr, struct debug_obj_descr *descr)
{
 struct debug_bucket *db;
 struct debug_obj *obj;
 unsigned long flags;

 if (!debug_objects_enabled)
  return;

 db = get_bucket((unsigned long) addr);

 raw_spin_lock_irqsave(&db->lock, flags);

 obj = lookup_object(addr, db);
 if (!obj) {
  struct debug_obj o = { .object = addr,
           .state = ODEBUG_STATE_NOTAVAILABLE,
           .descr = descr };

  raw_spin_unlock_irqrestore(&db->lock, flags);





  if (descr->is_static_object && descr->is_static_object(addr)) {

   debug_object_init(addr, descr);
  } else {
   debug_print_object(&o, "assert_init");
   debug_object_fixup(descr->fixup_assert_init, addr,
        ODEBUG_STATE_NOTAVAILABLE);
  }
  return;
 }

 raw_spin_unlock_irqrestore(&db->lock, flags);
}
