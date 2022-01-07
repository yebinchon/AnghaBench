
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum debug_obj_state { ____Placeholder_debug_obj_state } debug_obj_state ;


 int debug_objects_fixups ;

__attribute__((used)) static bool
debug_object_fixup(bool (*fixup)(void *addr, enum debug_obj_state state),
     void * addr, enum debug_obj_state state)
{
 if (fixup && fixup(addr, state)) {
  debug_objects_fixups++;
  return 1;
 }
 return 0;
}
