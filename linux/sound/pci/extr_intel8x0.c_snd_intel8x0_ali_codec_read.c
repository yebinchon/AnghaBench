
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {scalar_t__ num; struct intel8x0* private_data; } ;
struct intel8x0 {int dummy; } ;


 int ALI_CPR_ADDR ;
 unsigned short ALI_CPR_ADDR_READ ;
 unsigned short ALI_CPR_ADDR_SECONDARY ;
 int ALI_CSPSR_READ_OK ;
 int ALI_SPR ;
 int ICHREG (int ) ;
 unsigned short igetword (struct intel8x0*,int ) ;
 int iputword (struct intel8x0*,int ,unsigned short) ;
 scalar_t__ snd_intel8x0_ali_codec_ready (struct intel8x0*,int ) ;
 scalar_t__ snd_intel8x0_ali_codec_semaphore (struct intel8x0*) ;

__attribute__((used)) static unsigned short snd_intel8x0_ali_codec_read(struct snd_ac97 *ac97, unsigned short reg)
{
 struct intel8x0 *chip = ac97->private_data;
 unsigned short data = 0xffff;

 if (snd_intel8x0_ali_codec_semaphore(chip))
  goto __err;
 reg |= ALI_CPR_ADDR_READ;
 if (ac97->num)
  reg |= ALI_CPR_ADDR_SECONDARY;
 iputword(chip, ICHREG(ALI_CPR_ADDR), reg);
 if (snd_intel8x0_ali_codec_ready(chip, ALI_CSPSR_READ_OK))
  goto __err;
 data = igetword(chip, ICHREG(ALI_SPR));
 __err:
 return data;
}
