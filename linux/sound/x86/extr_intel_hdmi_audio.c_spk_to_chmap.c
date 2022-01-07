
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel_map_table {int map; int spk_mask; } ;


 struct channel_map_table* map_tables ;

__attribute__((used)) static int spk_to_chmap(int spk)
{
 const struct channel_map_table *t = map_tables;

 for (; t->map; t++) {
  if (t->spk_mask == spk)
   return t->map;
 }
 return 0;
}
