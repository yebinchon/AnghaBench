
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct nm256 {int mixer_status_mask; int mixer_status_offset; } ;


 int snd_nm256_readw (struct nm256*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int
snd_nm256_ac97_ready(struct nm256 *chip)
{
 int timeout = 10;
 u32 testaddr;
 u16 testb;

 testaddr = chip->mixer_status_offset;
 testb = chip->mixer_status_mask;




 while (timeout-- > 0) {
  if ((snd_nm256_readw(chip, testaddr) & testb) == 0)
   return 1;
  udelay(100);
 }
 return 0;
}
