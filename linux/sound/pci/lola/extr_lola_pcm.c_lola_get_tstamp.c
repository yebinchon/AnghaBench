
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lola {int granularity; } ;


 int lola_get_lrc (struct lola*) ;

__attribute__((used)) static unsigned int lola_get_tstamp(struct lola *chip, bool quick_no_sync)
{
 unsigned int tstamp = lola_get_lrc(chip) >> 8;
 if (chip->granularity) {
  unsigned int wait_banks = quick_no_sync ? 0 : 8;
  tstamp += (wait_banks + 1) * chip->granularity - 1;
  tstamp -= tstamp % chip->granularity;
 }
 return tstamp << 8;
}
