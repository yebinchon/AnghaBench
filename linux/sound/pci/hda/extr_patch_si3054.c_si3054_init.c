
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct si3054_spec {int international; } ;
struct TYPE_2__ {int mfg; } ;
struct hda_codec {TYPE_1__ core; struct si3054_spec* spec; } ;


 int AC_NODE_ROOT ;
 int AC_VERB_SET_CODEC_RESET ;
 int AC_VERB_SET_STREAM_FORMAT ;
 int ENOMEM ;
 int GET_REG (struct hda_codec*,int ) ;
 int SET_REG (struct hda_codec*,int ,int) ;
 int SI3054_ATAG_MASK ;
 int SI3054_CHIPID ;
 int SI3054_CHIPID_INTERNATIONAL ;
 int SI3054_DTAG_MASK ;
 int SI3054_EXTENDED_MID ;
 int SI3054_GPIO_CFG ;
 int SI3054_GPIO_POLARITY ;
 int SI3054_LINE_CFG1 ;
 int SI3054_LINE_LEVEL ;
 int SI3054_LINE_RATE ;
 int SI3054_LINE_STATUS ;
 int SI3054_MEI_READY ;
 int SI3054_MISC_AFE ;
 int SI3054_VERB_WRITE_NODE ;
 int codec_dbg (struct hda_codec*,char*,int) ;
 int codec_err (struct hda_codec*,char*,int) ;
 int msleep (int) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int ) ;
 scalar_t__ snd_hdac_regmap_add_vendor_verb (TYPE_1__*,int ) ;

__attribute__((used)) static int si3054_init(struct hda_codec *codec)
{
 struct si3054_spec *spec = codec->spec;
 unsigned wait_count;
 u16 val;

 if (snd_hdac_regmap_add_vendor_verb(&codec->core,
         SI3054_VERB_WRITE_NODE))
  return -ENOMEM;

 snd_hda_codec_write(codec, AC_NODE_ROOT, 0, AC_VERB_SET_CODEC_RESET, 0);
 snd_hda_codec_write(codec, codec->core.mfg, 0, AC_VERB_SET_STREAM_FORMAT, 0);
 SET_REG(codec, SI3054_LINE_RATE, 9600);
 SET_REG(codec, SI3054_LINE_LEVEL, SI3054_DTAG_MASK|SI3054_ATAG_MASK);
 SET_REG(codec, SI3054_EXTENDED_MID, 0);

 wait_count = 10;
 do {
  msleep(2);
  val = GET_REG(codec, SI3054_EXTENDED_MID);
 } while ((val & SI3054_MEI_READY) != SI3054_MEI_READY && wait_count--);

 if((val&SI3054_MEI_READY) != SI3054_MEI_READY) {
  codec_err(codec, "si3054: cannot initialize. EXT MID = %04x\n", val);


 }

 SET_REG(codec, SI3054_GPIO_POLARITY, 0xffff);
 SET_REG(codec, SI3054_GPIO_CFG, 0x0);
 SET_REG(codec, SI3054_MISC_AFE, 0);
 SET_REG(codec, SI3054_LINE_CFG1,0x200);

 if((GET_REG(codec,SI3054_LINE_STATUS) & (1<<6)) == 0) {
  codec_dbg(codec,
     "Link Frame Detect(FDT) is not ready (line status: %04x)\n",
    GET_REG(codec,SI3054_LINE_STATUS));
 }

 spec->international = GET_REG(codec, SI3054_CHIPID) & SI3054_CHIPID_INTERNATIONAL;

 return 0;
}
