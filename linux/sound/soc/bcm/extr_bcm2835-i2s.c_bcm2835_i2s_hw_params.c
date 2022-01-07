
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct bcm2835_i2s_dev {int tdm_slots; unsigned int slot_width; int frame_length; unsigned int rx_mask; unsigned int tx_mask; int fmt; int clk_rate; int dev; int i2s_regmap; int clk; scalar_t__ clk_prepared; } ;


 unsigned int BCM2835_I2S_CH1 (unsigned int) ;
 unsigned int BCM2835_I2S_CH1_POS (unsigned int) ;
 unsigned int BCM2835_I2S_CH2 (unsigned int) ;
 unsigned int BCM2835_I2S_CH2_POS (unsigned int) ;
 unsigned int BCM2835_I2S_CHEN ;
 unsigned int BCM2835_I2S_CHWEX ;
 unsigned int BCM2835_I2S_CHWID (unsigned int) ;
 unsigned int BCM2835_I2S_CLKI ;
 unsigned int BCM2835_I2S_CLKM ;
 int BCM2835_I2S_CS_A_REG ;
 int BCM2835_I2S_DMAEN ;
 int BCM2835_I2S_DREQ_A_REG ;
 unsigned int BCM2835_I2S_FLEN (int) ;
 unsigned int BCM2835_I2S_FRXP ;
 unsigned int BCM2835_I2S_FSI ;
 unsigned int BCM2835_I2S_FSLEN (unsigned int) ;
 unsigned int BCM2835_I2S_FSM ;
 unsigned int BCM2835_I2S_FTXP ;
 int BCM2835_I2S_MODE_A_REG ;
 int BCM2835_I2S_RX (int) ;
 int BCM2835_I2S_RXC_A_REG ;
 int BCM2835_I2S_RXON ;
 int BCM2835_I2S_RXTHR (int) ;
 int BCM2835_I2S_RX_PANIC (int) ;
 int BCM2835_I2S_TX (int) ;
 int BCM2835_I2S_TXC_A_REG ;
 int BCM2835_I2S_TXON ;
 int BCM2835_I2S_TXTHR (int) ;
 int BCM2835_I2S_TX_PANIC (int) ;
 int EINVAL ;






 int SND_SOC_DAIFMT_FORMAT_MASK ;



 int SND_SOC_DAIFMT_INV_MASK ;

 int SND_SOC_DAIFMT_MASTER_MASK ;



 int bcm2835_i2s_calc_channel_pos (unsigned int*,unsigned int*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int bcm2835_i2s_clear_fifos (struct bcm2835_i2s_dev*,int,int) ;
 int bcm2835_i2s_start_clock (struct bcm2835_i2s_dev*) ;
 int bcm2835_i2s_stop_clock (struct bcm2835_i2s_dev*) ;
 int clk_set_rate (int ,int) ;
 int dev_dbg (int ,char*,int,int,...) ;
 int dev_warn (int ,char*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 unsigned int params_width (struct snd_pcm_hw_params*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,unsigned int) ;
 struct bcm2835_i2s_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_params_to_bclk (struct snd_pcm_hw_params*) ;
 int snd_soc_params_to_frame_size (struct snd_pcm_hw_params*) ;

__attribute__((used)) static int bcm2835_i2s_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params,
     struct snd_soc_dai *dai)
{
 struct bcm2835_i2s_dev *dev = snd_soc_dai_get_drvdata(dai);
 unsigned int data_length, data_delay, framesync_length;
 unsigned int slots, slot_width, odd_slot_offset;
 int frame_length, bclk_rate;
 unsigned int rx_mask, tx_mask;
 unsigned int rx_ch1_pos, rx_ch2_pos, tx_ch1_pos, tx_ch2_pos;
 unsigned int mode, format;
 bool bit_clock_master = 0;
 bool frame_sync_master = 0;
 bool frame_start_falling_edge = 0;
 uint32_t csreg;
 int ret = 0;





 regmap_read(dev->i2s_regmap, BCM2835_I2S_CS_A_REG, &csreg);

 if (csreg & (BCM2835_I2S_TXON | BCM2835_I2S_RXON))
  return 0;

 data_length = params_width(params);
 data_delay = 0;
 odd_slot_offset = 0;
 mode = 0;

 if (dev->tdm_slots) {
  slots = dev->tdm_slots;
  slot_width = dev->slot_width;
  frame_length = dev->frame_length;
  rx_mask = dev->rx_mask;
  tx_mask = dev->tx_mask;
  bclk_rate = dev->frame_length * params_rate(params);
 } else {
  slots = 2;
  slot_width = params_width(params);
  rx_mask = 0x03;
  tx_mask = 0x03;

  frame_length = snd_soc_params_to_frame_size(params);
  if (frame_length < 0)
   return frame_length;

  bclk_rate = snd_soc_params_to_bclk(params);
  if (bclk_rate < 0)
   return bclk_rate;
 }


 if (data_length > slot_width)
  return -EINVAL;


 switch (dev->fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 137:
 case 138:
  bit_clock_master = 1;
  break;
 case 139:
 case 140:
  bit_clock_master = 0;
  break;
 default:
  return -EINVAL;
 }


 switch (dev->fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 137:
 case 139:
  frame_sync_master = 1;
  break;
 case 138:
 case 140:
  frame_sync_master = 0;
  break;
 default:
  return -EINVAL;
 }


 if (bit_clock_master &&
     (!dev->clk_prepared || dev->clk_rate != bclk_rate)) {
  if (dev->clk_prepared)
   bcm2835_i2s_stop_clock(dev);

  if (dev->clk_rate != bclk_rate) {
   ret = clk_set_rate(dev->clk, bclk_rate);
   if (ret)
    return ret;
   dev->clk_rate = bclk_rate;
  }

  bcm2835_i2s_start_clock(dev);
 }


 format = BCM2835_I2S_CHEN;

 if (data_length >= 24)
  format |= BCM2835_I2S_CHWEX;

 format |= BCM2835_I2S_CHWID((data_length-8)&0xf);


 format = BCM2835_I2S_CH1(format) | BCM2835_I2S_CH2(format);

 switch (dev->fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 134:

  if (slots & 1)
   return -EINVAL;





  odd_slot_offset = slots >> 1;


  data_delay = 1;


  framesync_length = frame_length / 2;
  frame_start_falling_edge = 1;
  break;
 case 131:
  if (slots & 1)
   return -EINVAL;

  odd_slot_offset = slots >> 1;
  data_delay = 0;
  framesync_length = frame_length / 2;
  frame_start_falling_edge = 0;
  break;
 case 128:
  if (slots & 1)
   return -EINVAL;


  if (frame_length & 1)
   return -EINVAL;

  odd_slot_offset = slots >> 1;
  data_delay = slot_width - data_length;
  framesync_length = frame_length / 2;
  frame_start_falling_edge = 0;
  break;
 case 136:
  data_delay = 1;
  framesync_length = 1;
  frame_start_falling_edge = 0;
  break;
 case 135:
  data_delay = 0;
  framesync_length = 1;
  frame_start_falling_edge = 0;
  break;
 default:
  return -EINVAL;
 }

 bcm2835_i2s_calc_channel_pos(&rx_ch1_pos, &rx_ch2_pos,
  rx_mask, slot_width, data_delay, odd_slot_offset);
 bcm2835_i2s_calc_channel_pos(&tx_ch1_pos, &tx_ch2_pos,
  tx_mask, slot_width, data_delay, odd_slot_offset);






 if ((!rx_ch1_pos || !tx_ch1_pos) && !frame_sync_master)
  dev_warn(dev->dev,
   "Unstable slave config detected, L/R may be swapped");







 regmap_write(dev->i2s_regmap, BCM2835_I2S_RXC_A_REG,
    format
  | BCM2835_I2S_CH1_POS(rx_ch1_pos)
  | BCM2835_I2S_CH2_POS(rx_ch2_pos));
 regmap_write(dev->i2s_regmap, BCM2835_I2S_TXC_A_REG,
    format
  | BCM2835_I2S_CH1_POS(tx_ch1_pos)
  | BCM2835_I2S_CH2_POS(tx_ch2_pos));



 if (data_length <= 16) {






  mode |= BCM2835_I2S_FTXP | BCM2835_I2S_FRXP;
 }

 mode |= BCM2835_I2S_FLEN(frame_length - 1);
 mode |= BCM2835_I2S_FSLEN(framesync_length);


 if (!bit_clock_master)
  mode |= BCM2835_I2S_CLKM;


 if (!frame_sync_master)
  mode |= BCM2835_I2S_FSM;


        switch (dev->fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:
 case 130:
  mode |= BCM2835_I2S_CLKI;
  break;
 case 132:
 case 133:
  break;
 default:
  return -EINVAL;
 }


 switch (dev->fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:
 case 132:
  if (frame_start_falling_edge)
   mode |= BCM2835_I2S_FSI;
  break;
 case 130:
 case 133:
  if (!frame_start_falling_edge)
   mode |= BCM2835_I2S_FSI;
  break;
 default:
  return -EINVAL;
 }

 regmap_write(dev->i2s_regmap, BCM2835_I2S_MODE_A_REG, mode);


 regmap_update_bits(dev->i2s_regmap, BCM2835_I2S_CS_A_REG,
   BCM2835_I2S_RXTHR(1)
   | BCM2835_I2S_TXTHR(1)
   | BCM2835_I2S_DMAEN, 0xffffffff);

 regmap_update_bits(dev->i2s_regmap, BCM2835_I2S_DREQ_A_REG,
     BCM2835_I2S_TX_PANIC(0x10)
   | BCM2835_I2S_RX_PANIC(0x30)
   | BCM2835_I2S_TX(0x30)
   | BCM2835_I2S_RX(0x20), 0xffffffff);


 bcm2835_i2s_clear_fifos(dev, 1, 1);

 dev_dbg(dev->dev,
  "slots: %d width: %d rx mask: 0x%02x tx_mask: 0x%02x\n",
  slots, slot_width, rx_mask, tx_mask);

 dev_dbg(dev->dev, "frame len: %d sync len: %d data len: %d\n",
  frame_length, framesync_length, data_length);

 dev_dbg(dev->dev, "rx pos: %d,%d tx pos: %d,%d\n",
  rx_ch1_pos, rx_ch2_pos, tx_ch1_pos, tx_ch2_pos);

 dev_dbg(dev->dev, "sampling rate: %d bclk rate: %d\n",
  params_rate(params), bclk_rate);

 dev_dbg(dev->dev, "CLKM: %d CLKI: %d FSM: %d FSI: %d frame start: %s edge\n",
  !!(mode & BCM2835_I2S_CLKM),
  !!(mode & BCM2835_I2S_CLKI),
  !!(mode & BCM2835_I2S_FSM),
  !!(mode & BCM2835_I2S_FSI),
  (mode & BCM2835_I2S_FSI) ? "falling" : "rising");

 return ret;
}
