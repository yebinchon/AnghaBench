
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atiixp {int codec_not_ready_bits; TYPE_1__* card; int pci; } ;
struct TYPE_2__ {int dev; } ;


 int ALL_CODEC_NOT_READY ;
 int CODEC_CHECK_BITS ;
 int ENXIO ;
 int IER ;
 int ac97_codec ;
 int ac97_probing_bugs (int ) ;
 int atiixp_write (struct atiixp*,int ,int) ;
 int dev_err (int ,char*) ;
 int mdelay (int) ;

__attribute__((used)) static int snd_atiixp_codec_detect(struct atiixp *chip)
{
 int timeout;

 chip->codec_not_ready_bits = 0;
 if (ac97_codec == -1)
  ac97_codec = ac97_probing_bugs(chip->pci);
 if (ac97_codec >= 0) {
  chip->codec_not_ready_bits |=
   CODEC_CHECK_BITS ^ (1 << (ac97_codec + 10));
  return 0;
 }

 atiixp_write(chip, IER, CODEC_CHECK_BITS);

 timeout = 50;
 while (timeout-- > 0) {
  mdelay(1);
  if (chip->codec_not_ready_bits)
   break;
 }
 atiixp_write(chip, IER, 0);

 if ((chip->codec_not_ready_bits & ALL_CODEC_NOT_READY) == ALL_CODEC_NOT_READY) {
  dev_err(chip->card->dev, "no codec detected!\n");
  return -ENXIO;
 }
 return 0;
}
