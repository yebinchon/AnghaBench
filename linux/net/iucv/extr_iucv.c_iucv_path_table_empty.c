
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iucv_max_pathid ;
 scalar_t__* iucv_path_table ;

__attribute__((used)) static int iucv_path_table_empty(void)
{
 int i;

 for (i = 0; i < iucv_max_pathid; i++) {
  if (iucv_path_table[i])
   return 0;
 }
 return 1;
}
