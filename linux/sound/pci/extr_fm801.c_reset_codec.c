
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm801 {int dummy; } ;


 int AC97_RESET ;
 int CODEC_CTRL ;
 int fm801_readw (struct fm801*,int ) ;
 int fm801_writew (struct fm801*,int ,int) ;
 int msecs_to_jiffies (int) ;
 int udelay (int) ;
 int wait_for_codec (struct fm801*,int ,int ,int ) ;

__attribute__((used)) static int reset_codec(struct fm801 *chip)
{

 fm801_writew(chip, CODEC_CTRL, (1 << 5) | (1 << 6));
 fm801_readw(chip, CODEC_CTRL);
 udelay(100);
 fm801_writew(chip, CODEC_CTRL, 0);

 return wait_for_codec(chip, 0, AC97_RESET, msecs_to_jiffies(750));
}
