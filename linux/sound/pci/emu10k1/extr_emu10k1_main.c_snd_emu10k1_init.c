
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {unsigned int addr; } ;
struct TYPE_6__ {unsigned int addr; } ;
struct snd_emu10k1 {unsigned int* spdif_bits; int** i2c_capture_volume; unsigned int address_mode; int revision; int model; scalar_t__ port; scalar_t__ audigy; TYPE_4__* card_capabilities; TYPE_3__ silent_page; TYPE_2__ ptb_pages; TYPE_1__* card; } ;
struct TYPE_8__ {scalar_t__ i2c_adc; scalar_t__ emu_model; scalar_t__ spi_dac; scalar_t__ ca0108_chip; scalar_t__ ca0151_chip; } ;
struct TYPE_5__ {int dev; } ;


 int AC97SLOT ;
 unsigned int AC97SLOT_REAR_LEFT ;
 unsigned int AC97SLOT_REAR_RIGHT ;
 int ADCBA ;
 int ADCBS ;
 unsigned int ADCBS_BUFSIZE_NONE ;
 int ARRAY_SIZE (int **) ;
 scalar_t__ A_IOCFG ;
 unsigned int A_IOCFG_GPOUT0 ;
 unsigned int A_IOCFG_GPOUT1 ;
 unsigned int A_IOCFG_GPOUT2 ;
 int A_SPDIF_SAMPLERATE ;
 int CAPTURE_P16V_SOURCE ;
 int CLIEH ;
 int CLIEL ;
 int FXBA ;
 int FXBS ;
 scalar_t__ HCFG ;
 scalar_t__ HCFG2 ;
 unsigned int HCFG_AC3ENABLE_CDSPDIF ;
 unsigned int HCFG_AC3ENABLE_GPSPDIF ;
 unsigned int HCFG_AUDIOENABLE ;
 unsigned int HCFG_AUTOMUTE ;
 unsigned int HCFG_AUTOMUTE_ASYNC ;
 unsigned int HCFG_EMU32_SLAVE ;
 unsigned int HCFG_EXPANDED_MEM ;
 unsigned int HCFG_GPOUT1 ;
 unsigned int HCFG_GPOUT2 ;
 unsigned int HCFG_JOYENABLE ;
 unsigned int HCFG_LOCKSOUNDCACHE ;
 unsigned int HCFG_LOCKTANKCACHE_MASK ;
 unsigned int HCFG_MUTEBUTTONENABLE ;
 scalar_t__ INTE ;
 int MAPA ;
 int MAPB ;
 unsigned int MAP_PTI_MASK0 ;
 unsigned int MAP_PTI_MASK1 ;
 int MICBA ;
 int MICBS ;
 int NUM_G ;
 int P17V_I2S_SRC_SEL ;
 int PTB ;
 int SOLEH ;
 int SOLEL ;
 int SPBYPASS ;
 unsigned int SPBYPASS_FORMAT ;
 int SPCS0 ;
 int SPCS1 ;
 int SPCS2 ;
 int SRCMULTI_ENABLE ;
 int SRCSel ;
 int TCB ;
 int TCBS ;
 int dev_info (int ,char*) ;
 int ** i2c_adc_init ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 int snd_emu10k1_i2c_write (struct snd_emu10k1*,int ,int ) ;
 int snd_emu10k1_ptr20_write (struct snd_emu10k1*,int,int ,int) ;
 int snd_emu10k1_ptr_read (struct snd_emu10k1*,int ,int ) ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,int ,int,unsigned int) ;
 int snd_emu10k1_spi_write (struct snd_emu10k1*,int *) ;
 int snd_emu10k1_voice_init (struct snd_emu10k1*,int) ;
 int ** spi_dac_init ;
 int udelay (int) ;

__attribute__((used)) static int snd_emu10k1_init(struct snd_emu10k1 *emu, int enable_ir, int resume)
{
 unsigned int silent_page;
 int ch;
 u32 tmp;


 outl(HCFG_LOCKSOUNDCACHE | HCFG_LOCKTANKCACHE_MASK |
  HCFG_MUTEBUTTONENABLE, emu->port + HCFG);


 snd_emu10k1_ptr_write(emu, MICBS, 0, ADCBS_BUFSIZE_NONE);
 snd_emu10k1_ptr_write(emu, MICBA, 0, 0);
 snd_emu10k1_ptr_write(emu, FXBS, 0, ADCBS_BUFSIZE_NONE);
 snd_emu10k1_ptr_write(emu, FXBA, 0, 0);
 snd_emu10k1_ptr_write(emu, ADCBS, 0, ADCBS_BUFSIZE_NONE);
 snd_emu10k1_ptr_write(emu, ADCBA, 0, 0);


 outl(0, emu->port + INTE);
 snd_emu10k1_ptr_write(emu, CLIEL, 0, 0);
 snd_emu10k1_ptr_write(emu, CLIEH, 0, 0);
 snd_emu10k1_ptr_write(emu, SOLEL, 0, 0);
 snd_emu10k1_ptr_write(emu, SOLEH, 0, 0);

 if (emu->audigy) {

  snd_emu10k1_ptr_write(emu, SPBYPASS, 0, SPBYPASS_FORMAT);

  snd_emu10k1_ptr_write(emu, AC97SLOT, 0, AC97SLOT_REAR_RIGHT |
          AC97SLOT_REAR_LEFT);
 }


 for (ch = 0; ch < NUM_G; ch++)
  snd_emu10k1_voice_init(emu, ch);

 snd_emu10k1_ptr_write(emu, SPCS0, 0, emu->spdif_bits[0]);
 snd_emu10k1_ptr_write(emu, SPCS1, 0, emu->spdif_bits[1]);
 snd_emu10k1_ptr_write(emu, SPCS2, 0, emu->spdif_bits[2]);

 if (emu->card_capabilities->ca0151_chip) {


  tmp = snd_emu10k1_ptr_read(emu, A_SPDIF_SAMPLERATE, 0);
  tmp &= 0xfffff1ff;
  tmp |= (0x2<<9);
  snd_emu10k1_ptr_write(emu, A_SPDIF_SAMPLERATE, 0, tmp);


  snd_emu10k1_ptr20_write(emu, SRCSel, 0, 0x14);


  snd_emu10k1_ptr20_write(emu, SRCMULTI_ENABLE, 0, 0xFFFFFFFF);


  outl(0x0201, emu->port + HCFG2);

  snd_emu10k1_ptr20_write(emu, CAPTURE_P16V_SOURCE, 0, 0x78e4);
 }
 if (emu->card_capabilities->ca0108_chip) {

  dev_info(emu->card->dev, "Audigy2 value: Special config.\n");

  tmp = snd_emu10k1_ptr_read(emu, A_SPDIF_SAMPLERATE, 0);
  tmp &= 0xfffff1ff;
  tmp |= (0x2<<9);
  snd_emu10k1_ptr_write(emu, A_SPDIF_SAMPLERATE, 0, tmp);


  outl(0x600000, emu->port + 0x20);
  outl(0x14, emu->port + 0x24);


  outl(0x7b0000, emu->port + 0x20);
  outl(0xFF000000, emu->port + 0x24);





  outl(0x7a0000, emu->port + 0x20);
  outl(0xFF000000, emu->port + 0x24);
  tmp = inl(emu->port + A_IOCFG) & ~0x8;
  outl(tmp, emu->port + A_IOCFG);
 }
 if (emu->card_capabilities->spi_dac) {
  int size, n;

  size = ARRAY_SIZE(spi_dac_init);
  for (n = 0; n < size; n++)
   snd_emu10k1_spi_write(emu, spi_dac_init[n]);

  snd_emu10k1_ptr20_write(emu, 0x60, 0, 0x10);
  outl(0x76, emu->port + A_IOCFG);
 }
 if (emu->card_capabilities->i2c_adc) {
  int size, n;

  snd_emu10k1_ptr20_write(emu, P17V_I2S_SRC_SEL, 0, 0x2020205f);
  tmp = inl(emu->port + A_IOCFG);
  outl(tmp | 0x4, emu->port + A_IOCFG);
  tmp = inl(emu->port + A_IOCFG);
  size = ARRAY_SIZE(i2c_adc_init);
  for (n = 0; n < size; n++)
   snd_emu10k1_i2c_write(emu, i2c_adc_init[n][0], i2c_adc_init[n][1]);
  for (n = 0; n < 4; n++) {
   emu->i2c_capture_volume[n][0] = 0xcf;
   emu->i2c_capture_volume[n][1] = 0xcf;
  }
 }


 snd_emu10k1_ptr_write(emu, PTB, 0, emu->ptb_pages.addr);
 snd_emu10k1_ptr_write(emu, TCB, 0, 0);
 snd_emu10k1_ptr_write(emu, TCBS, 0, 4);

 silent_page = (emu->silent_page.addr << emu->address_mode) | (emu->address_mode ? MAP_PTI_MASK1 : MAP_PTI_MASK0);
 for (ch = 0; ch < NUM_G; ch++) {
  snd_emu10k1_ptr_write(emu, MAPA, ch, silent_page);
  snd_emu10k1_ptr_write(emu, MAPB, ch, silent_page);
 }

 if (emu->card_capabilities->emu_model) {
  outl(HCFG_AUTOMUTE_ASYNC |
   HCFG_EMU32_SLAVE |
   HCFG_AUDIOENABLE, emu->port + HCFG);







 } else if (emu->audigy) {
  if (emu->revision == 4)
   outl(HCFG_AUDIOENABLE |
        HCFG_AC3ENABLE_CDSPDIF |
        HCFG_AC3ENABLE_GPSPDIF |
        HCFG_AUTOMUTE | HCFG_JOYENABLE, emu->port + HCFG);
  else
   outl(HCFG_AUTOMUTE | HCFG_JOYENABLE, emu->port + HCFG);


 } else if (emu->model == 0x20 ||
     emu->model == 0xc400 ||
     (emu->model == 0x21 && emu->revision < 6))
  outl(HCFG_LOCKTANKCACHE_MASK | HCFG_AUTOMUTE, emu->port + HCFG);
 else

  outl(HCFG_LOCKTANKCACHE_MASK | HCFG_AUTOMUTE | HCFG_JOYENABLE, emu->port + HCFG);

 if (enable_ir) {
  if (emu->card_capabilities->emu_model) {
   ;
  } else if (emu->card_capabilities->i2c_adc) {
   ;
  } else if (emu->audigy) {
   unsigned int reg = inl(emu->port + A_IOCFG);
   outl(reg | A_IOCFG_GPOUT2, emu->port + A_IOCFG);
   udelay(500);
   outl(reg | A_IOCFG_GPOUT1 | A_IOCFG_GPOUT2, emu->port + A_IOCFG);
   udelay(100);
   outl(reg, emu->port + A_IOCFG);
  } else {
   unsigned int reg = inl(emu->port + HCFG);
   outl(reg | HCFG_GPOUT2, emu->port + HCFG);
   udelay(500);
   outl(reg | HCFG_GPOUT1 | HCFG_GPOUT2, emu->port + HCFG);
   udelay(100);
   outl(reg, emu->port + HCFG);
  }
 }

 if (emu->card_capabilities->emu_model) {
  ;
 } else if (emu->card_capabilities->i2c_adc) {
  ;
 } else if (emu->audigy) {
  unsigned int reg = inl(emu->port + A_IOCFG);
  outl(reg | A_IOCFG_GPOUT0, emu->port + A_IOCFG);
 }

 if (emu->address_mode == 0) {

  outl(inl(emu->port + HCFG) | HCFG_EXPANDED_MEM, emu->port + HCFG);
 }

 return 0;
}
