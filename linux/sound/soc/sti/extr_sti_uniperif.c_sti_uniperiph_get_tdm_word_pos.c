
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int slot_width; int slots; unsigned int mask; } ;
struct uniperif {TYPE_1__ tdm_slot; } ;


 int WORD_MAX ;

int sti_uniperiph_get_tdm_word_pos(struct uniperif *uni,
       unsigned int *word_pos)
{
 int slot_width = uni->tdm_slot.slot_width / 8;
 int slots_num = uni->tdm_slot.slots;
 unsigned int slots_mask = uni->tdm_slot.mask;
 int i, j, k;
 unsigned int word16_pos[4];
 for (i = 0, j = 0, k = 0; (i < slots_num) && (k < WORD_MAX); i++) {
  if ((slots_mask >> i) & 0x01) {
   word16_pos[j] = i * slot_width;

   if (slot_width == 4) {
    word16_pos[j + 1] = word16_pos[j] + 2;
    j++;
   }
   j++;

   if (j > 3) {
    word_pos[k] = word16_pos[1] |
           (word16_pos[0] << 8) |
           (word16_pos[3] << 16) |
           (word16_pos[2] << 24);
    j = 0;
    k++;
   }
  }
 }

 return 0;
}
