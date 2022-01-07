
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int optical_in; int optical_out; int adc_pads; int dac_pads; int* output_source; int internal_clock; } ;
struct snd_emu10k1 {TYPE_3__ emu1010; TYPE_2__* card_capabilities; scalar_t__ port; TYPE_1__* card; int firmware; } ;
struct TYPE_5__ {scalar_t__ emu_model; } ;
struct TYPE_4__ {int dev; } ;


 unsigned int EMU_DST_ALICE2_EMU32_0 ;
 unsigned int EMU_DST_ALICE2_EMU32_1 ;
 unsigned int EMU_DST_ALICE2_EMU32_2 ;
 unsigned int EMU_DST_ALICE2_EMU32_3 ;
 unsigned int EMU_DST_ALICE2_EMU32_4 ;
 unsigned int EMU_DST_ALICE2_EMU32_5 ;
 unsigned int EMU_DST_ALICE2_EMU32_6 ;
 unsigned int EMU_DST_ALICE2_EMU32_7 ;
 unsigned int EMU_DST_ALICE2_EMU32_8 ;
 unsigned int EMU_DST_ALICE2_EMU32_9 ;
 unsigned int EMU_DST_ALICE2_EMU32_A ;
 unsigned int EMU_DST_ALICE2_EMU32_B ;
 unsigned int EMU_DST_ALICE2_EMU32_C ;
 unsigned int EMU_DST_ALICE2_EMU32_D ;
 unsigned int EMU_DST_ALICE2_EMU32_E ;
 unsigned int EMU_DST_ALICE2_EMU32_F ;
 unsigned int EMU_DST_ALICE_I2S0_LEFT ;
 unsigned int EMU_DST_ALICE_I2S0_RIGHT ;
 unsigned int EMU_DST_ALICE_I2S1_LEFT ;
 unsigned int EMU_DST_ALICE_I2S1_RIGHT ;
 unsigned int EMU_DST_ALICE_I2S2_LEFT ;
 unsigned int EMU_DST_ALICE_I2S2_RIGHT ;
 unsigned int EMU_DST_DOCK_DAC1_LEFT1 ;
 unsigned int EMU_DST_DOCK_DAC1_RIGHT1 ;
 unsigned int EMU_DST_DOCK_DAC2_LEFT1 ;
 unsigned int EMU_DST_DOCK_DAC2_RIGHT1 ;
 unsigned int EMU_DST_DOCK_DAC3_LEFT1 ;
 unsigned int EMU_DST_DOCK_DAC3_RIGHT1 ;
 unsigned int EMU_DST_DOCK_DAC4_LEFT1 ;
 unsigned int EMU_DST_DOCK_DAC4_RIGHT1 ;
 unsigned int EMU_DST_DOCK_PHONES_LEFT1 ;
 unsigned int EMU_DST_DOCK_PHONES_RIGHT1 ;
 unsigned int EMU_DST_DOCK_SPDIF_LEFT1 ;
 unsigned int EMU_DST_DOCK_SPDIF_RIGHT1 ;
 unsigned int EMU_DST_HAMOA_DAC_LEFT1 ;
 unsigned int EMU_DST_HAMOA_DAC_RIGHT1 ;
 unsigned int EMU_DST_HANA_ADAT ;
 unsigned int EMU_DST_HANA_SPDIF_LEFT1 ;
 unsigned int EMU_DST_HANA_SPDIF_RIGHT1 ;
 unsigned int EMU_DST_MANA_DAC_LEFT ;
 unsigned int EMU_DST_MANA_DAC_RIGHT ;
 int EMU_HANA_ADC_PADS ;
 int EMU_HANA_DAC_PADS ;
 int EMU_HANA_DEFCLOCK ;
 int EMU_HANA_DOCK_LEDS_2 ;
 int EMU_HANA_DOCK_MISC ;
 int EMU_HANA_DOCK_PWR ;
 int EMU_HANA_DOCK_PWR_ON ;
 int EMU_HANA_FPGA_CONFIG ;
 int EMU_HANA_ID ;
 int EMU_HANA_IRQ_ENABLE ;
 int EMU_HANA_MAJOR_REV ;
 int EMU_HANA_MIDI_IN ;
 int EMU_HANA_MIDI_OUT ;
 int EMU_HANA_MINOR_REV ;
 int EMU_HANA_OPTICAL_IN_ADAT ;
 int EMU_HANA_OPTICAL_OUT_ADAT ;
 int EMU_HANA_OPTICAL_TYPE ;
 int EMU_HANA_OPTION_CARDS ;
 int EMU_HANA_SPDIF_MODE ;
 int EMU_HANA_UNMUTE ;
 int EMU_HANA_WCLOCK ;
 int EMU_HANA_WCLOCK_INT_48K ;
 scalar_t__ EMU_MODEL_EMU1616 ;
 scalar_t__ EMU_SRC_ALICE_EMU32A ;
 scalar_t__ EMU_SRC_ALICE_EMU32B ;
 scalar_t__ EMU_SRC_DOCK_ADC1_LEFT1 ;
 scalar_t__ EMU_SRC_DOCK_ADC1_RIGHT1 ;
 scalar_t__ EMU_SRC_DOCK_ADC2_LEFT1 ;
 scalar_t__ EMU_SRC_DOCK_ADC2_RIGHT1 ;
 scalar_t__ EMU_SRC_DOCK_ADC3_LEFT1 ;
 scalar_t__ EMU_SRC_DOCK_ADC3_RIGHT1 ;
 scalar_t__ EMU_SRC_DOCK_MIC_A1 ;
 scalar_t__ EMU_SRC_DOCK_MIC_B1 ;
 scalar_t__ EMU_SRC_HAMOA_ADC_LEFT1 ;
 scalar_t__ EMU_SRC_HAMOA_ADC_LEFT2 ;
 scalar_t__ EMU_SRC_HAMOA_ADC_LEFT3 ;
 scalar_t__ EMU_SRC_HAMOA_ADC_LEFT4 ;
 scalar_t__ EMU_SRC_HAMOA_ADC_RIGHT1 ;
 scalar_t__ EMU_SRC_HAMOA_ADC_RIGHT2 ;
 scalar_t__ EMU_SRC_HAMOA_ADC_RIGHT3 ;
 scalar_t__ EMU_SRC_HAMOA_ADC_RIGHT4 ;
 scalar_t__ EMU_SRC_HANA_ADAT ;
 scalar_t__ EMU_SRC_SILENCE ;
 int ENODEV ;
 scalar_t__ HCFG ;
 int dev_dbg (int ,char*,int) ;
 int dev_info (int ,char*,...) ;
 int outl (int,scalar_t__) ;
 int snd_emu1010_fpga_link_dst_src_write (struct snd_emu10k1*,unsigned int,scalar_t__) ;
 int snd_emu1010_fpga_read (struct snd_emu10k1*,int ,int*) ;
 int snd_emu1010_fpga_write (struct snd_emu10k1*,int ,int) ;
 int snd_emu1010_load_firmware (struct snd_emu10k1*,int ,int *) ;

__attribute__((used)) static int snd_emu10k1_emu1010_init(struct snd_emu10k1 *emu)
{
 unsigned int i;
 u32 tmp, tmp2, reg;
 int err;

 dev_info(emu->card->dev, "emu1010: Special config.\n");




 outl(0x0005a00c, emu->port + HCFG);




 outl(0x0005a004, emu->port + HCFG);



 outl(0x0005a000, emu->port + HCFG);



 outl(0x0005a000, emu->port + HCFG);


 snd_emu1010_fpga_write(emu, EMU_HANA_DOCK_PWR, 0);


 snd_emu1010_fpga_read(emu, EMU_HANA_ID, &reg);
 dev_dbg(emu->card->dev, "reg1 = 0x%x\n", reg);
 if ((reg & 0x3f) == 0x15) {



  snd_emu1010_fpga_write(emu, EMU_HANA_FPGA_CONFIG, 0x02);
 }
 snd_emu1010_fpga_read(emu, EMU_HANA_ID, &reg);
 dev_dbg(emu->card->dev, "reg2 = 0x%x\n", reg);
 if ((reg & 0x3f) == 0x15) {

  dev_info(emu->card->dev,
    "emu1010: FPGA failed to return to programming mode\n");
  return -ENODEV;
 }
 dev_info(emu->card->dev, "emu1010: EMU_HANA_ID = 0x%x\n", reg);

 err = snd_emu1010_load_firmware(emu, 0, &emu->firmware);
 if (err < 0) {
  dev_info(emu->card->dev, "emu1010: Loading Firmware failed\n");
  return err;
 }


 snd_emu1010_fpga_read(emu, EMU_HANA_ID, &reg);
 if ((reg & 0x3f) != 0x15) {

  dev_info(emu->card->dev,
    "emu1010: Loading Hana Firmware file failed, reg = 0x%x\n",
    reg);
  return -ENODEV;
 }

 dev_info(emu->card->dev, "emu1010: Hana Firmware loaded\n");
 snd_emu1010_fpga_read(emu, EMU_HANA_MAJOR_REV, &tmp);
 snd_emu1010_fpga_read(emu, EMU_HANA_MINOR_REV, &tmp2);
 dev_info(emu->card->dev, "emu1010: Hana version: %u.%u\n", tmp, tmp2);

 snd_emu1010_fpga_write(emu, EMU_HANA_DOCK_PWR, EMU_HANA_DOCK_PWR_ON);

 snd_emu1010_fpga_read(emu, EMU_HANA_OPTION_CARDS, &reg);
 dev_info(emu->card->dev, "emu1010: Card options = 0x%x\n", reg);
 snd_emu1010_fpga_read(emu, EMU_HANA_OPTION_CARDS, &reg);
 dev_info(emu->card->dev, "emu1010: Card options = 0x%x\n", reg);
 snd_emu1010_fpga_read(emu, EMU_HANA_OPTICAL_TYPE, &tmp);




 emu->emu1010.optical_in = 1;
 emu->emu1010.optical_out = 1;
 tmp = 0;
 tmp = (emu->emu1010.optical_in ? EMU_HANA_OPTICAL_IN_ADAT : 0) |
  (emu->emu1010.optical_out ? EMU_HANA_OPTICAL_OUT_ADAT : 0);
 snd_emu1010_fpga_write(emu, EMU_HANA_OPTICAL_TYPE, tmp);
 snd_emu1010_fpga_read(emu, EMU_HANA_ADC_PADS, &tmp);

 snd_emu1010_fpga_write(emu, EMU_HANA_ADC_PADS, 0x00);
 emu->emu1010.adc_pads = 0x00;
 snd_emu1010_fpga_read(emu, EMU_HANA_DOCK_MISC, &tmp);

 snd_emu1010_fpga_write(emu, EMU_HANA_DOCK_MISC, 0x30);
 snd_emu1010_fpga_write(emu, EMU_HANA_DOCK_LEDS_2, 0x12);
 snd_emu1010_fpga_read(emu, EMU_HANA_DAC_PADS, &tmp);

 snd_emu1010_fpga_write(emu, EMU_HANA_DAC_PADS, 0x0f);
 emu->emu1010.dac_pads = 0x0f;
 snd_emu1010_fpga_read(emu, EMU_HANA_DOCK_MISC, &tmp);
 snd_emu1010_fpga_write(emu, EMU_HANA_DOCK_MISC, 0x30);
 snd_emu1010_fpga_read(emu, EMU_HANA_SPDIF_MODE, &tmp);

 snd_emu1010_fpga_write(emu, EMU_HANA_SPDIF_MODE, 0x10);

 snd_emu1010_fpga_write(emu, EMU_HANA_MIDI_IN, 0x19);

 snd_emu1010_fpga_write(emu, EMU_HANA_MIDI_OUT, 0x0c);



 snd_emu1010_fpga_write(emu, EMU_HANA_IRQ_ENABLE, 0x00);

 snd_emu1010_fpga_read(emu, EMU_HANA_OPTION_CARDS, &reg);
 dev_info(emu->card->dev, "emu1010: Card options3 = 0x%x\n", reg);

 snd_emu1010_fpga_write(emu, EMU_HANA_DEFCLOCK, 0x00);

 snd_emu1010_fpga_write(emu, EMU_HANA_WCLOCK, EMU_HANA_WCLOCK_INT_48K);


 snd_emu1010_fpga_write(emu, EMU_HANA_DOCK_LEDS_2, 0x12);
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE2_EMU32_0, EMU_SRC_DOCK_MIC_A1);
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE2_EMU32_1, EMU_SRC_DOCK_MIC_B1);
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE2_EMU32_2, EMU_SRC_HAMOA_ADC_LEFT2);
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE2_EMU32_3, EMU_SRC_HAMOA_ADC_LEFT2);
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE2_EMU32_4, EMU_SRC_DOCK_ADC1_LEFT1);
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE2_EMU32_5, EMU_SRC_DOCK_ADC1_RIGHT1);
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE2_EMU32_6, EMU_SRC_DOCK_ADC2_LEFT1);
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE2_EMU32_7, EMU_SRC_DOCK_ADC2_RIGHT1);





 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE2_EMU32_8, EMU_SRC_DOCK_MIC_A1);
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE2_EMU32_9, EMU_SRC_DOCK_MIC_B1);
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE2_EMU32_A, EMU_SRC_HAMOA_ADC_LEFT2);
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE2_EMU32_B, EMU_SRC_HAMOA_ADC_LEFT2);
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE2_EMU32_C, EMU_SRC_DOCK_ADC1_LEFT1);
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE2_EMU32_D, EMU_SRC_DOCK_ADC1_RIGHT1);
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE2_EMU32_E, EMU_SRC_DOCK_ADC2_LEFT1);
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE2_EMU32_F, EMU_SRC_DOCK_ADC2_RIGHT1);
 for (i = 0; i < 0x20; i++) {

  snd_emu1010_fpga_link_dst_src_write(emu, 0x0100 + i, EMU_SRC_SILENCE);
 }
 for (i = 0; i < 4; i++) {

  snd_emu1010_fpga_link_dst_src_write(emu, 0x0200 + i, EMU_SRC_SILENCE);
 }
 for (i = 0; i < 7; i++) {

  snd_emu1010_fpga_link_dst_src_write(emu, 0x0300 + i, EMU_SRC_SILENCE);
 }
 for (i = 0; i < 7; i++) {

  snd_emu1010_fpga_link_dst_src_write(emu, EMU_DST_HANA_ADAT + i, EMU_SRC_SILENCE);
 }
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE_I2S0_LEFT, EMU_SRC_DOCK_ADC1_LEFT1);
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE_I2S0_RIGHT, EMU_SRC_DOCK_ADC1_RIGHT1);
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE_I2S1_LEFT, EMU_SRC_DOCK_ADC2_LEFT1);
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE_I2S1_RIGHT, EMU_SRC_DOCK_ADC2_RIGHT1);
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE_I2S2_LEFT, EMU_SRC_DOCK_ADC3_LEFT1);
 snd_emu1010_fpga_link_dst_src_write(emu,
  EMU_DST_ALICE_I2S2_RIGHT, EMU_SRC_DOCK_ADC3_RIGHT1);
 snd_emu1010_fpga_write(emu, EMU_HANA_UNMUTE, 0x01);

 snd_emu1010_fpga_read(emu, EMU_HANA_OPTION_CARDS, &tmp);





 outl(0x0000a000, emu->port + HCFG);




 outl(0x0000a001, emu->port + HCFG);



 snd_emu1010_fpga_read(emu, EMU_HANA_OPTION_CARDS, &tmp);
 snd_emu1010_fpga_write(emu, EMU_HANA_MIDI_IN, 0x19);
 snd_emu1010_fpga_write(emu, EMU_HANA_MIDI_OUT, 0x0c);
 snd_emu1010_fpga_write(emu, EMU_HANA_MIDI_IN, 0x19);
 snd_emu1010_fpga_write(emu, EMU_HANA_MIDI_OUT, 0x0c);
 snd_emu1010_fpga_read(emu, EMU_HANA_SPDIF_MODE, &tmp);
 snd_emu1010_fpga_write(emu, EMU_HANA_SPDIF_MODE, 0x10);
 if (emu->card_capabilities->emu_model == EMU_MODEL_EMU1616) {


  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_DOCK_DAC1_LEFT1, EMU_SRC_ALICE_EMU32A + 0);
  emu->emu1010.output_source[0] = 17;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_DOCK_DAC1_RIGHT1, EMU_SRC_ALICE_EMU32A + 1);
  emu->emu1010.output_source[1] = 18;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_DOCK_DAC2_LEFT1, EMU_SRC_ALICE_EMU32A + 2);
  emu->emu1010.output_source[2] = 19;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_DOCK_DAC2_RIGHT1, EMU_SRC_ALICE_EMU32A + 3);
  emu->emu1010.output_source[3] = 20;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_DOCK_DAC3_LEFT1, EMU_SRC_ALICE_EMU32A + 4);
  emu->emu1010.output_source[4] = 21;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_DOCK_DAC3_RIGHT1, EMU_SRC_ALICE_EMU32A + 5);
  emu->emu1010.output_source[5] = 22;

  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_MANA_DAC_LEFT, EMU_SRC_ALICE_EMU32A + 0);
  emu->emu1010.output_source[16] = 17;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_MANA_DAC_RIGHT, EMU_SRC_ALICE_EMU32A + 1);
  emu->emu1010.output_source[17] = 18;
 } else {

  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_DOCK_DAC1_LEFT1, EMU_SRC_ALICE_EMU32A + 0);
  emu->emu1010.output_source[0] = 21;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_DOCK_DAC1_RIGHT1, EMU_SRC_ALICE_EMU32A + 1);
  emu->emu1010.output_source[1] = 22;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_DOCK_DAC2_LEFT1, EMU_SRC_ALICE_EMU32A + 2);
  emu->emu1010.output_source[2] = 23;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_DOCK_DAC2_RIGHT1, EMU_SRC_ALICE_EMU32A + 3);
  emu->emu1010.output_source[3] = 24;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_DOCK_DAC3_LEFT1, EMU_SRC_ALICE_EMU32A + 4);
  emu->emu1010.output_source[4] = 25;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_DOCK_DAC3_RIGHT1, EMU_SRC_ALICE_EMU32A + 5);
  emu->emu1010.output_source[5] = 26;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_DOCK_DAC4_LEFT1, EMU_SRC_ALICE_EMU32A + 6);
  emu->emu1010.output_source[6] = 27;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_DOCK_DAC4_RIGHT1, EMU_SRC_ALICE_EMU32A + 7);
  emu->emu1010.output_source[7] = 28;

  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_DOCK_PHONES_LEFT1, EMU_SRC_ALICE_EMU32A + 0);
  emu->emu1010.output_source[8] = 21;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_DOCK_PHONES_RIGHT1, EMU_SRC_ALICE_EMU32A + 1);
  emu->emu1010.output_source[9] = 22;

  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_DOCK_SPDIF_LEFT1, EMU_SRC_ALICE_EMU32A + 0);
  emu->emu1010.output_source[10] = 21;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_DOCK_SPDIF_RIGHT1, EMU_SRC_ALICE_EMU32A + 1);
  emu->emu1010.output_source[11] = 22;

  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_HANA_SPDIF_LEFT1, EMU_SRC_ALICE_EMU32A + 0);
  emu->emu1010.output_source[12] = 21;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_HANA_SPDIF_RIGHT1, EMU_SRC_ALICE_EMU32A + 1);
  emu->emu1010.output_source[13] = 22;

  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_HAMOA_DAC_LEFT1, EMU_SRC_ALICE_EMU32A + 0);
  emu->emu1010.output_source[14] = 21;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_HAMOA_DAC_RIGHT1, EMU_SRC_ALICE_EMU32A + 1);
  emu->emu1010.output_source[15] = 22;

  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_HANA_ADAT, EMU_SRC_ALICE_EMU32A + 0);
  emu->emu1010.output_source[16] = 21;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_HANA_ADAT + 1, EMU_SRC_ALICE_EMU32A + 1);
  emu->emu1010.output_source[17] = 22;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_HANA_ADAT + 2, EMU_SRC_ALICE_EMU32A + 2);
  emu->emu1010.output_source[18] = 23;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_HANA_ADAT + 3, EMU_SRC_ALICE_EMU32A + 3);
  emu->emu1010.output_source[19] = 24;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_HANA_ADAT + 4, EMU_SRC_ALICE_EMU32A + 4);
  emu->emu1010.output_source[20] = 25;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_HANA_ADAT + 5, EMU_SRC_ALICE_EMU32A + 5);
  emu->emu1010.output_source[21] = 26;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_HANA_ADAT + 6, EMU_SRC_ALICE_EMU32A + 6);
  emu->emu1010.output_source[22] = 27;
  snd_emu1010_fpga_link_dst_src_write(emu,
   EMU_DST_HANA_ADAT + 7, EMU_SRC_ALICE_EMU32A + 7);
  emu->emu1010.output_source[23] = 28;
 }




 snd_emu1010_fpga_write(emu, EMU_HANA_UNMUTE, 0x0);
 snd_emu1010_fpga_write(emu, EMU_HANA_DEFCLOCK, 0x0);

 snd_emu1010_fpga_write(emu, EMU_HANA_WCLOCK, EMU_HANA_WCLOCK_INT_48K);

 emu->emu1010.internal_clock = 1;
 snd_emu1010_fpga_write(emu, EMU_HANA_DOCK_LEDS_2, 0x12);
 snd_emu1010_fpga_write(emu, EMU_HANA_UNMUTE, 0x1);




 return 0;
}
