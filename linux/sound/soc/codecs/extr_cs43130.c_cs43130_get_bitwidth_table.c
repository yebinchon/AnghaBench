
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs43130_bitwidth_map {unsigned int bitwidth; } ;


 int ARRAY_SIZE (struct cs43130_bitwidth_map const*) ;
 struct cs43130_bitwidth_map const* cs43130_bitwidth_table ;

__attribute__((used)) static const struct cs43130_bitwidth_map *cs43130_get_bitwidth_table(
    unsigned int bitwidth)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(cs43130_bitwidth_table); i++) {
  if (cs43130_bitwidth_table[i].bitwidth == bitwidth)
   return &cs43130_bitwidth_table[i];
 }

 return ((void*)0);
}
