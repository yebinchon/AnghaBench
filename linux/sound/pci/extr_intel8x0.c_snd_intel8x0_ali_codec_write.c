
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {scalar_t__ num; struct intel8x0* private_data; } ;
struct intel8x0 {int dummy; } ;


 int ALI_CPR ;
 int ALI_CPR_ADDR ;
 unsigned short ALI_CPR_ADDR_SECONDARY ;
 int ALI_CSPSR_WRITE_OK ;
 int ICHREG (int ) ;
 int iputword (struct intel8x0*,int ,unsigned short) ;
 int snd_intel8x0_ali_codec_ready (struct intel8x0*,int ) ;
 scalar_t__ snd_intel8x0_ali_codec_semaphore (struct intel8x0*) ;

__attribute__((used)) static void snd_intel8x0_ali_codec_write(struct snd_ac97 *ac97, unsigned short reg,
      unsigned short val)
{
 struct intel8x0 *chip = ac97->private_data;

 if (snd_intel8x0_ali_codec_semaphore(chip))
  return;
 iputword(chip, ICHREG(ALI_CPR), val);
 if (ac97->num)
  reg |= ALI_CPR_ADDR_SECONDARY;
 iputword(chip, ICHREG(ALI_CPR_ADDR), reg);
 snd_intel8x0_ali_codec_ready(chip, ALI_CSPSR_WRITE_OK);
}
