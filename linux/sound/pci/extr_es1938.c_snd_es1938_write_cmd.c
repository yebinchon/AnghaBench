
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct es1938 {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int READSTATUS ;
 int SLSB_REG (struct es1938*,int ) ;
 int WRITEDATA ;
 int WRITE_LOOP_TIMEOUT ;
 int dev_err (int ,char*,unsigned char,unsigned char) ;
 int inb (int ) ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static void snd_es1938_write_cmd(struct es1938 *chip, unsigned char cmd)
{
 int i;
 unsigned char v;
 for (i = 0; i < WRITE_LOOP_TIMEOUT; i++) {
  if (!(v = inb(SLSB_REG(chip, READSTATUS)) & 0x80)) {
   outb(cmd, SLSB_REG(chip, WRITEDATA));
   return;
  }
 }
 dev_err(chip->card->dev,
  "snd_es1938_write_cmd timeout (0x02%x/0x02%x)\n", cmd, v);
}
