
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcxhr {int chip_idx; TYPE_1__* card; TYPE_2__* mgr; } ;
struct TYPE_5__ {scalar_t__ board_has_aes1; } ;
struct TYPE_4__ {int dev; } ;


 unsigned char PCXHR_INPB (TYPE_2__*,int ) ;
 int PCXHR_OUTPB (TYPE_2__*,int ,int ) ;
 unsigned char PCXHR_SUER1_BIT_C_READ_MASK ;
 unsigned char PCXHR_SUER_BIT_C_READ_MASK ;
 int PCXHR_XLX_CSUER ;
 int PCXHR_XLX_RUER ;
 int dev_dbg (int ,char*,int ,int,unsigned char) ;

int hr222_iec958_capture_byte(struct snd_pcxhr *chip,
        int aes_idx, unsigned char *aes_bits)
{
 unsigned char idx = (unsigned char)(aes_idx * 8);
 unsigned char temp = 0;
 unsigned char mask = chip->mgr->board_has_aes1 ?
  PCXHR_SUER1_BIT_C_READ_MASK : PCXHR_SUER_BIT_C_READ_MASK;
 int i;
 for (i = 0; i < 8; i++) {
  PCXHR_OUTPB(chip->mgr, PCXHR_XLX_RUER, idx++);
  temp <<= 1;
  if (PCXHR_INPB(chip->mgr, PCXHR_XLX_CSUER) & mask)
   temp |= 1;
 }
 dev_dbg(chip->card->dev, "read iec958 AES %d byte %d = 0x%x\n",
      chip->chip_idx, aes_idx, temp);
 *aes_bits = temp;
 return 0;
}
