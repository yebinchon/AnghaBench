
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct es1938 {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int GET_LOOP_TIMEOUT ;
 int READDATA ;
 int SLSB_REG (struct es1938*,int ) ;
 int STATUS ;
 int dev_err (int ,char*,unsigned char) ;
 int inb (int ) ;

__attribute__((used)) static int snd_es1938_get_byte(struct es1938 *chip)
{
 int i;
 unsigned char v;
 for (i = GET_LOOP_TIMEOUT; i; i--)
  if ((v = inb(SLSB_REG(chip, STATUS))) & 0x80)
   return inb(SLSB_REG(chip, READDATA));
 dev_err(chip->card->dev, "get_byte timeout: status 0x02%x\n", v);
 return -ENODEV;
}
