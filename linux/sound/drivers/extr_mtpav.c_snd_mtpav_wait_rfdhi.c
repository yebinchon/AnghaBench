
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtpav {int dummy; } ;


 int SIGS_RFD ;
 int SREG ;
 int snd_mtpav_getreg (struct mtpav*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void snd_mtpav_wait_rfdhi(struct mtpav *chip)
{
 int counts = 10000;
 u8 sbyte;

 sbyte = snd_mtpav_getreg(chip, SREG);
 while (!(sbyte & SIGS_RFD) && counts--) {
  sbyte = snd_mtpav_getreg(chip, SREG);
  udelay(10);
 }
}
