
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word ;
typedef unsigned long __u8 ;
typedef unsigned long __u64 ;
typedef unsigned long __u32 ;
typedef unsigned long __u16 ;


 int KDB_BADWIDTH ;
 int kdb_printf (char*,long) ;
 int kdb_putarea (unsigned long,unsigned long) ;

int kdb_putword(unsigned long addr, unsigned long word, size_t size)
{
 int diag;
 __u8 w1;
 __u16 w2;
 __u32 w4;
 __u64 w8;
 switch (size) {
 case 1:
  w1 = word;
  diag = kdb_putarea(addr, w1);
  break;
 case 2:
  w2 = word;
  diag = kdb_putarea(addr, w2);
  break;
 case 4:
  w4 = word;
  diag = kdb_putarea(addr, w4);
  break;
 case 8:
  if (size <= sizeof(word)) {
   w8 = word;
   diag = kdb_putarea(addr, w8);
   break;
  }

 default:
  diag = KDB_BADWIDTH;
  kdb_printf("kdb_putword: bad width %ld\n", (long) size);
 }
 return diag;
}
