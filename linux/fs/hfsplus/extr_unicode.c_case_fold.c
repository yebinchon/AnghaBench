
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int* hfsplus_case_fold_table ;

__attribute__((used)) static inline u16 case_fold(u16 c)
{
 u16 tmp;

 tmp = hfsplus_case_fold_table[c >> 8];
 if (tmp)
  tmp = hfsplus_case_fold_table[tmp + (c & 0xff)];
 else
  tmp = c;
 return tmp;
}
