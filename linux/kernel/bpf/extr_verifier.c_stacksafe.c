
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct idpair {int dummy; } ;
struct bpf_func_state {int allocated_stack; TYPE_1__* stack; } ;
struct TYPE_5__ {int live; } ;
struct TYPE_4__ {scalar_t__* slot_type; TYPE_2__ spilled_ptr; } ;


 int BPF_REG_SIZE ;
 int REG_LIVE_READ ;
 scalar_t__ STACK_INVALID ;
 scalar_t__ STACK_MISC ;
 scalar_t__ STACK_SPILL ;
 scalar_t__ STACK_ZERO ;
 int regsafe (TYPE_2__*,TYPE_2__*,struct idpair*) ;

__attribute__((used)) static bool stacksafe(struct bpf_func_state *old,
        struct bpf_func_state *cur,
        struct idpair *idmap)
{
 int i, spi;





 for (i = 0; i < old->allocated_stack; i++) {
  spi = i / BPF_REG_SIZE;

  if (!(old->stack[spi].spilled_ptr.live & REG_LIVE_READ)) {
   i += BPF_REG_SIZE - 1;

   continue;
  }

  if (old->stack[spi].slot_type[i % BPF_REG_SIZE] == STACK_INVALID)
   continue;




  if (i >= cur->allocated_stack)
   return 0;





  if (old->stack[spi].slot_type[i % BPF_REG_SIZE] == STACK_MISC &&
      cur->stack[spi].slot_type[i % BPF_REG_SIZE] == STACK_ZERO)
   continue;
  if (old->stack[spi].slot_type[i % BPF_REG_SIZE] !=
      cur->stack[spi].slot_type[i % BPF_REG_SIZE])





   return 0;
  if (i % BPF_REG_SIZE)
   continue;
  if (old->stack[spi].slot_type[0] != STACK_SPILL)
   continue;
  if (!regsafe(&old->stack[spi].spilled_ptr,
        &cur->stack[spi].spilled_ptr,
        idmap))
   return 0;
 }
 return 1;
}
