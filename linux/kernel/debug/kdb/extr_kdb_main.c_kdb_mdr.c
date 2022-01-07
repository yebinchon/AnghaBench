
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ kdb_getarea (unsigned char,unsigned long) ;
 int kdb_printf (char*,...) ;

__attribute__((used)) static int kdb_mdr(unsigned long addr, unsigned int count)
{
 unsigned char c;
 while (count--) {
  if (kdb_getarea(c, addr))
   return 0;
  kdb_printf("%02x", c);
  addr++;
 }
 kdb_printf("\n");
 return 0;
}
