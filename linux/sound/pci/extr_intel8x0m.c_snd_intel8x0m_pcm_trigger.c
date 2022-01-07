
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct intel8x0m {int dummy; } ;
struct ichdev {unsigned long reg_offset; scalar_t__ roff_sr; } ;


 int EINVAL ;
 int ICH_DCH ;
 unsigned char ICH_IOCE ;
 scalar_t__ ICH_REG_OFF_CR ;
 unsigned char ICH_RESETREGS ;
 unsigned char ICH_STARTBM ;






 struct ichdev* get_ichdev (struct snd_pcm_substream*) ;
 int igetbyte (struct intel8x0m*,scalar_t__) ;
 int iputbyte (struct intel8x0m*,scalar_t__,unsigned char) ;
 struct intel8x0m* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_intel8x0m_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct intel8x0m *chip = snd_pcm_substream_chip(substream);
 struct ichdev *ichdev = get_ichdev(substream);
 unsigned char val = 0;
 unsigned long port = ichdev->reg_offset;

 switch (cmd) {
 case 130:
 case 131:
  val = ICH_IOCE | ICH_STARTBM;
  break;
 case 129:
 case 128:
  val = 0;
  break;
 case 133:
  val = ICH_IOCE;
  break;
 case 132:
  val = ICH_IOCE | ICH_STARTBM;
  break;
 default:
  return -EINVAL;
 }
 iputbyte(chip, port + ICH_REG_OFF_CR, val);
 if (cmd == 129) {

  while (!(igetbyte(chip, port + ichdev->roff_sr) & ICH_DCH)) ;

  iputbyte(chip, port + ICH_REG_OFF_CR, ICH_RESETREGS);
 }
 return 0;
}
