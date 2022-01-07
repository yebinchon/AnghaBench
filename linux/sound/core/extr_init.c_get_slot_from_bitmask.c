
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int SNDRV_CARDS ;
 int snd_cards_lock ;
 int test_bit (int,int ) ;

__attribute__((used)) static int get_slot_from_bitmask(int mask, int (*check)(struct module *, int),
     struct module *module)
{
 int slot;

 for (slot = 0; slot < SNDRV_CARDS; slot++) {
  if (slot < 32 && !(mask & (1U << slot)))
   continue;
  if (!test_bit(slot, snd_cards_lock)) {
   if (check(module, slot))
    return slot;
  }
 }
 return mask;
}
