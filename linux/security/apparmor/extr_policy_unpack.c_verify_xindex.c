
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AA_X_INDEX_MASK ;
 int AA_X_TABLE ;
 int AA_X_TYPE_MASK ;

__attribute__((used)) static bool verify_xindex(int xindex, int table_size)
{
 int index, xtype;
 xtype = xindex & AA_X_TYPE_MASK;
 index = xindex & AA_X_INDEX_MASK;
 if (xtype == AA_X_TABLE && index >= table_size)
  return 0;
 return 1;
}
