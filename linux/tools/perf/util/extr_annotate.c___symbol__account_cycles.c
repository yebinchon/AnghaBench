
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct cyc_hist {unsigned int cycles_max; unsigned int cycles_min; unsigned int have_start; scalar_t__ start; unsigned int cycles; int reset; scalar_t__ num; int cycles_aggr; int num_aggr; } ;



__attribute__((used)) static int __symbol__account_cycles(struct cyc_hist *ch,
        u64 start,
        unsigned offset, unsigned cycles,
        unsigned have_start)
{
 ch[offset].num_aggr++;
 ch[offset].cycles_aggr += cycles;

 if (cycles > ch[offset].cycles_max)
  ch[offset].cycles_max = cycles;

 if (ch[offset].cycles_min) {
  if (cycles && cycles < ch[offset].cycles_min)
   ch[offset].cycles_min = cycles;
 } else
  ch[offset].cycles_min = cycles;

 if (!have_start && ch[offset].have_start)
  return 0;
 if (ch[offset].num) {
  if (have_start && (!ch[offset].have_start ||
       ch[offset].start > start)) {
   ch[offset].have_start = 0;
   ch[offset].cycles = 0;
   ch[offset].num = 0;
   if (ch[offset].reset < 0xffff)
    ch[offset].reset++;
  } else if (have_start &&
      ch[offset].start < start)
   return 0;
 }
 ch[offset].have_start = have_start;
 ch[offset].start = start;
 ch[offset].cycles += cycles;
 ch[offset].num++;
 return 0;
}
