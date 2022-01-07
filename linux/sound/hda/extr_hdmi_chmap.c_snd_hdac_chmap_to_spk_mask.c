
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel_map_table {char map; int spk_mask; } ;


 struct channel_map_table* map_tables ;

int snd_hdac_chmap_to_spk_mask(unsigned char c)
{
 struct channel_map_table *t = map_tables;

 for (; t->map; t++) {
  if (t->map == c)
   return t->spk_mask;
 }
 return 0;
}
