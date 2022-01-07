
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atiixp_modem {int codec_not_ready_bits; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int ALL_CODEC_NOT_READY ;
 int CODEC_CHECK_BITS ;
 int ENXIO ;
 int IER ;
 int atiixp_write (struct atiixp_modem*,int ,int ) ;
 int dev_err (int ,char*) ;
 int msleep (int) ;

__attribute__((used)) static int snd_atiixp_codec_detect(struct atiixp_modem *chip)
{
 int timeout;

 chip->codec_not_ready_bits = 0;
 atiixp_write(chip, IER, CODEC_CHECK_BITS);

 timeout = 50;
 while (timeout-- > 0) {
  msleep(1);
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
