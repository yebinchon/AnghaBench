
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm801 {int secondary_addr; int secondary; scalar_t__ multichannel; } ;


 int AC97_DATA ;
 int AC97_VENDOR_ID1 ;
 unsigned short fm801_readw (struct fm801*,int ) ;
 int msecs_to_jiffies (int) ;
 int wait_for_codec (struct fm801*,int,int ,int ) ;

__attribute__((used)) static void snd_fm801_chip_multichannel_init(struct fm801 *chip)
{
 unsigned short cmdw;

 if (chip->multichannel) {
  if (chip->secondary_addr) {
   wait_for_codec(chip, chip->secondary_addr,
           AC97_VENDOR_ID1, msecs_to_jiffies(50));
  } else {


   int i;
   for (i = 3; i > 0; i--) {
    if (!wait_for_codec(chip, i, AC97_VENDOR_ID1,
           msecs_to_jiffies(50))) {
     cmdw = fm801_readw(chip, AC97_DATA);
     if (cmdw != 0xffff && cmdw != 0) {
      chip->secondary = 1;
      chip->secondary_addr = i;
      break;
     }
    }
   }
  }



  wait_for_codec(chip, 0, AC97_VENDOR_ID1, msecs_to_jiffies(750));
 }
}
