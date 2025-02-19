
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long __u8 ;
typedef unsigned long __u64 ;
typedef unsigned long __u32 ;
typedef unsigned long __u16 ;


 int KDB_BADWIDTH ;
 int kdb_getarea (unsigned long,unsigned long) ;
 int kdb_printf (char*,long) ;

int kdb_getword(unsigned long *word, unsigned long addr, size_t size)
{
 int diag;
 __u8 w1;
 __u16 w2;
 __u32 w4;
 __u64 w8;
 *word = 0;
 switch (size) {
 case 1:
  diag = kdb_getarea(w1, addr);
  if (!diag)
   *word = w1;
  break;
 case 2:
  diag = kdb_getarea(w2, addr);
  if (!diag)
   *word = w2;
  break;
 case 4:
  diag = kdb_getarea(w4, addr);
  if (!diag)
   *word = w4;
  break;
 case 8:
  if (size <= sizeof(*word)) {
   diag = kdb_getarea(w8, addr);
   if (!diag)
    *word = w8;
   break;
  }

 default:
  diag = KDB_BADWIDTH;
  kdb_printf("kdb_getword: bad width %ld\n", (long) size);
 }
 return diag;
}
