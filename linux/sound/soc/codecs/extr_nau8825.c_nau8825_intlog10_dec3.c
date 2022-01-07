
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int LOG10_MAGIC ;
 int fls (int) ;
 int* logtable ;

__attribute__((used)) static u32 nau8825_intlog10_dec3(u32 value)
{
 u32 msb, logentry, significand, interpolation, log10val;
 u64 log2val;


 msb = fls(value) - 1;
 significand = value << (31 - msb);
 logentry = (significand >> 23) & 0xff;
 interpolation = ((significand & 0x7fffff) *
  ((logtable[(logentry + 1) & 0xff] -
  logtable[logentry]) & 0xffff)) >> 15;

 log2val = ((msb << 24) + (logtable[logentry] << 8) + interpolation);



 log10val = (log2val * LOG10_MAGIC) >> 31;



 return log10val / ((1 << 24) / 1000);
}
