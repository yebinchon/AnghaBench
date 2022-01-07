
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_aw2_saa7146 {int dummy; } ;


 int GPIO_CTRL ;
 int WRITEREG (int,int ) ;

void snd_aw2_saa7146_use_digital_input(struct snd_aw2_saa7146 *chip,
           int use_digital)
{






 if (use_digital)
  WRITEREG(0x40, GPIO_CTRL);
 else
  WRITEREG(0x50, GPIO_CTRL);
}
