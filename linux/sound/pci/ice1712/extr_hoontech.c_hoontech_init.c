
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int num_total_dacs; int num_total_adcs; struct hoontech_spec* spec; } ;
struct hoontech_spec {int config; int* boxconfig; int boxbits; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ICE1712_STDSP24_0_BOX (int ,int ) ;
 int ICE1712_STDSP24_0_DAREAR (int ,int ) ;
 int ICE1712_STDSP24_1_CHN1 (int ,int) ;
 int ICE1712_STDSP24_1_CHN2 (int ,int) ;
 int ICE1712_STDSP24_1_CHN3 (int ,int) ;
 int ICE1712_STDSP24_2_CHN4 (int ,int) ;
 int ICE1712_STDSP24_2_MIDI1 (int ,int ) ;
 int ICE1712_STDSP24_2_MIDIIN (int ,int) ;
 int ICE1712_STDSP24_3_INSEL (int ,int ) ;
 int ICE1712_STDSP24_3_MIDI2 (int ,int ) ;
 int ICE1712_STDSP24_3_MUTE (int ,int) ;
 int ICE1712_STDSP24_BOX_CHN1 ;
 int ICE1712_STDSP24_BOX_CHN2 ;
 int ICE1712_STDSP24_BOX_CHN3 ;
 int ICE1712_STDSP24_BOX_CHN4 ;
 int ICE1712_STDSP24_BOX_MIDI1 ;
 int ICE1712_STDSP24_BOX_MIDI2 ;
 int ICE1712_STDSP24_CLOCK (int ,int,int) ;
 int ICE1712_STDSP24_DAREAR ;
 int ICE1712_STDSP24_INSEL ;
 int ICE1712_STDSP24_MUTE ;
 int ICE1712_STDSP24_SET_ADDR (int ,int) ;
 struct hoontech_spec* kzalloc (int,int ) ;
 int snd_ice1712_stdsp24_box_channel (struct snd_ice1712*,int,int,int) ;
 int snd_ice1712_stdsp24_box_midi (struct snd_ice1712*,int,int) ;
 int snd_ice1712_stdsp24_darear (struct snd_ice1712*,int) ;
 int snd_ice1712_stdsp24_insel (struct snd_ice1712*,int) ;
 int snd_ice1712_stdsp24_midi2 (struct snd_ice1712*,int) ;
 int snd_ice1712_stdsp24_mute (struct snd_ice1712*,int) ;

__attribute__((used)) static int hoontech_init(struct snd_ice1712 *ice, bool staudio)
{
 struct hoontech_spec *spec;
 int box, chn;

 ice->num_total_dacs = 8;
 ice->num_total_adcs = 8;

 spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec)
  return -ENOMEM;
 ice->spec = spec;

 ICE1712_STDSP24_SET_ADDR(spec->boxbits, 0);
 ICE1712_STDSP24_CLOCK(spec->boxbits, 0, 1);
 ICE1712_STDSP24_0_BOX(spec->boxbits, 0);
 ICE1712_STDSP24_0_DAREAR(spec->boxbits, 0);

 ICE1712_STDSP24_SET_ADDR(spec->boxbits, 1);
 ICE1712_STDSP24_CLOCK(spec->boxbits, 1, 1);
 ICE1712_STDSP24_1_CHN1(spec->boxbits, 1);
 ICE1712_STDSP24_1_CHN2(spec->boxbits, 1);
 ICE1712_STDSP24_1_CHN3(spec->boxbits, 1);

 ICE1712_STDSP24_SET_ADDR(spec->boxbits, 2);
 ICE1712_STDSP24_CLOCK(spec->boxbits, 2, 1);
 ICE1712_STDSP24_2_CHN4(spec->boxbits, 1);
 ICE1712_STDSP24_2_MIDIIN(spec->boxbits, 1);
 ICE1712_STDSP24_2_MIDI1(spec->boxbits, 0);

 ICE1712_STDSP24_SET_ADDR(spec->boxbits, 3);
 ICE1712_STDSP24_CLOCK(spec->boxbits, 3, 1);
 ICE1712_STDSP24_3_MIDI2(spec->boxbits, 0);
 ICE1712_STDSP24_3_MUTE(spec->boxbits, 1);
 ICE1712_STDSP24_3_INSEL(spec->boxbits, 0);


 if (staudio)
  spec->config = ICE1712_STDSP24_MUTE;
 else
  spec->config = 0;
 spec->boxconfig[0] = ICE1712_STDSP24_BOX_CHN1 |
         ICE1712_STDSP24_BOX_CHN2 |
         ICE1712_STDSP24_BOX_CHN3 |
         ICE1712_STDSP24_BOX_CHN4 |
         ICE1712_STDSP24_BOX_MIDI1 |
         ICE1712_STDSP24_BOX_MIDI2;
 if (staudio) {
  spec->boxconfig[1] =
  spec->boxconfig[2] =
  spec->boxconfig[3] = spec->boxconfig[0];
 } else {
  spec->boxconfig[1] =
  spec->boxconfig[2] =
  spec->boxconfig[3] = 0;
 }

 snd_ice1712_stdsp24_darear(ice,
  (spec->config & ICE1712_STDSP24_DAREAR) ? 1 : 0);
 snd_ice1712_stdsp24_mute(ice,
  (spec->config & ICE1712_STDSP24_MUTE) ? 1 : 0);
 snd_ice1712_stdsp24_insel(ice,
  (spec->config & ICE1712_STDSP24_INSEL) ? 1 : 0);
 for (box = 0; box < 4; box++) {
  if (spec->boxconfig[box] & ICE1712_STDSP24_BOX_MIDI2)
                        snd_ice1712_stdsp24_midi2(ice, 1);
  for (chn = 0; chn < 4; chn++)
   snd_ice1712_stdsp24_box_channel(ice, box, chn,
    (spec->boxconfig[box] & (1 << chn)) ? 1 : 0);
  if (spec->boxconfig[box] & ICE1712_STDSP24_BOX_MIDI1)
   snd_ice1712_stdsp24_box_midi(ice, box, 1);
 }

 return 0;
}
