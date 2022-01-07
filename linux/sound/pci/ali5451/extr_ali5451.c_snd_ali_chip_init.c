
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ali {scalar_t__ revision; int spdif_mask; int num_of_codecs; TYPE_1__* card; scalar_t__ spdif_support; void* ac97_ext_status; void* ac97_ext_id; int pci; struct pci_dev* pci_m7101; struct pci_dev* pci_m1533; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int AC97_EXTENDED_ID ;
 int AC97_EXTENDED_STATUS ;
 scalar_t__ ALI_5451_V02 ;
 int ALI_AINT ;
 int ALI_AINTEN ;
 int ALI_GLOBAL_CONTROL ;
 int ALI_MPUR2 ;
 int ALI_REG (struct snd_ali*,int ) ;
 int ALI_SCTRL ;
 int ALI_SCTRL_CODEC2_READY ;
 int ALI_SCTRL_GPIO_IN2 ;
 int ALI_SCTRL_LINE_IN2 ;
 int ALI_SCTRL_LINE_OUT_EN ;
 int ALI_VOLUME ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int inl (int ) ;
 int outb (int,int ) ;
 int outl (int,int ) ;
 int pci_read_config_byte (struct pci_dev*,int,unsigned char*) ;
 int pci_read_config_dword (int ,int,unsigned int*) ;
 int pci_write_config_byte (struct pci_dev*,int,unsigned char) ;
 int pci_write_config_dword (int ,int,unsigned int) ;
 void* snd_ali_codec_peek (struct snd_ali*,int ,int ) ;
 int snd_ali_enable_spdif_out (struct snd_ali*) ;
 scalar_t__ snd_ali_reset_5451 (struct snd_ali*) ;

__attribute__((used)) static int snd_ali_chip_init(struct snd_ali *codec)
{
 unsigned int legacy;
 unsigned char temp;
 struct pci_dev *pci_dev;

 dev_dbg(codec->card->dev, "chip initializing ...\n");

 if (snd_ali_reset_5451(codec)) {
  dev_err(codec->card->dev, "ali_chip_init: reset 5451 error.\n");
  return -1;
 }

 if (codec->revision == ALI_5451_V02) {
         pci_dev = codec->pci_m1533;
  pci_read_config_byte(pci_dev, 0x59, &temp);
  temp |= 0x80;
  pci_write_config_byte(pci_dev, 0x59, temp);

  pci_dev = codec->pci_m7101;
  pci_read_config_byte(pci_dev, 0xb8, &temp);
  temp |= 0x20;
  pci_write_config_byte(pci_dev, 0xB8, temp);
 }

 pci_read_config_dword(codec->pci, 0x44, &legacy);
 legacy &= 0xff00ff00;
 legacy |= 0x000800aa;
 pci_write_config_dword(codec->pci, 0x44, legacy);

 outl(0x80000001, ALI_REG(codec, ALI_GLOBAL_CONTROL));
 outl(0x00000000, ALI_REG(codec, ALI_AINTEN));
 outl(0xffffffff, ALI_REG(codec, ALI_AINT));
 outl(0x00000000, ALI_REG(codec, ALI_VOLUME));
 outb(0x10, ALI_REG(codec, ALI_MPUR2));

 codec->ac97_ext_id = snd_ali_codec_peek(codec, 0, AC97_EXTENDED_ID);
 codec->ac97_ext_status = snd_ali_codec_peek(codec, 0,
          AC97_EXTENDED_STATUS);
 if (codec->spdif_support) {
  snd_ali_enable_spdif_out(codec);
  codec->spdif_mask = 0x00000002;
 }

 codec->num_of_codecs = 1;


 if (inl(ALI_REG(codec, ALI_SCTRL)) & ALI_SCTRL_CODEC2_READY) {
  codec->num_of_codecs++;
  outl(inl(ALI_REG(codec, ALI_SCTRL)) |
       (ALI_SCTRL_LINE_IN2 | ALI_SCTRL_GPIO_IN2 |
        ALI_SCTRL_LINE_OUT_EN),
       ALI_REG(codec, ALI_SCTRL));
 }

 dev_dbg(codec->card->dev, "chip initialize succeed.\n");
 return 0;

}
