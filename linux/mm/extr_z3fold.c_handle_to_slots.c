
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_buddy_slots {int dummy; } ;


 int SLOTS_ALIGN ;

__attribute__((used)) static inline struct z3fold_buddy_slots *handle_to_slots(unsigned long handle)
{
 return (struct z3fold_buddy_slots *)(handle & ~(SLOTS_ALIGN - 1));
}
