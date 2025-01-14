
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cmdret {unsigned short* retwords; } ;
struct snd_riptide {struct cmdif* cif; } ;
struct snd_ac97 {struct snd_riptide* private_data; } ;
struct cmdif {int dummy; } ;


 union cmdret CMDRET_ZERO ;
 int MAX_WRITE_RETRY ;
 int SEND_RACR (struct cmdif*,unsigned short,union cmdret*) ;
 int SEND_SACR (struct cmdif*,unsigned short,unsigned short) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_printdd (char*,...) ;

__attribute__((used)) static void
snd_riptide_codec_write(struct snd_ac97 *ac97, unsigned short reg,
   unsigned short val)
{
 struct snd_riptide *chip = ac97->private_data;
 struct cmdif *cif = chip->cif;
 union cmdret rptr = CMDRET_ZERO;
 int i = 0;

 if (snd_BUG_ON(!cif))
  return;

 snd_printdd("Write AC97 reg 0x%x 0x%x\n", reg, val);
 do {
  SEND_SACR(cif, val, reg);
  SEND_RACR(cif, reg, &rptr);
 } while (rptr.retwords[1] != val && i++ < MAX_WRITE_RETRY);
 if (i > MAX_WRITE_RETRY)
  snd_printdd("Write AC97 reg failed\n");
}
