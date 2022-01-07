
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int **) ;
 int debug_kfree (int *) ;
 int ** kdb_name_table ;

void kdbnearsym_cleanup(void)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(kdb_name_table); ++i) {
  if (kdb_name_table[i]) {
   debug_kfree(kdb_name_table[i]);
   kdb_name_table[i] = ((void*)0);
  }
 }
}
