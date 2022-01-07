
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tlv320dac33_priv {int fifo_mode; int burst_bclkdiv; int mutex; int uthr; int alarm_threshold; int keep_bclk; int chip_power; int refclk; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {int rate; int format; } ;


 unsigned int CALC_OSCSET (int,int ) ;
 unsigned int CALC_RATIOSET (int,int ) ;
 int DAC33_ADJSTEP (int) ;
 int DAC33_ADJTHRSHLD (int) ;
 int DAC33_ASRC_CTRL_A ;
 int DAC33_ASRC_CTRL_B ;
 int DAC33_ATHR_MSB ;
 int DAC33_ATM (int ) ;
 int DAC33_BCLKON ;
 int DAC33_CALIB_TIME ;
 unsigned int DAC33_DACLPDNB ;
 unsigned int DAC33_DACRPDNB ;
 int DAC33_FAUTO ;
 int DAC33_FBYPAS ;
 int DAC33_FIFOFLUSH ;
 int DAC33_FIFO_CTRL_A ;
 int DAC33_FIFO_IRQ_MODE_A ;
 int DAC33_FIFO_IRQ_MODE_B ;
 int DAC33_FIFO_IRQ_MODE_LEVEL ;


 int DAC33_INTPM_AHIGH ;
 int DAC33_INTP_CTRL_A ;
 int DAC33_INT_OSC_CTRL ;
 int DAC33_INT_OSC_CTRL_B ;
 int DAC33_INT_OSC_CTRL_C ;
 int DAC33_INT_OSC_FREQ_RAT_A ;
 int DAC33_LTHR_MSB ;
 int DAC33_MODE7_MARGIN ;
 int DAC33_NCYCL_16 ;
 int DAC33_NCYCL_32 ;
 int DAC33_NCYCL_MASK ;
 unsigned int DAC33_OSCPDNB ;
 int DAC33_PWR_CTRL ;
 int DAC33_REFDIV (int) ;
 int DAC33_SER_AUDIOIF_CTRL_A ;
 int DAC33_SER_AUDIOIF_CTRL_B ;
 int DAC33_SER_AUDIOIF_CTRL_C ;
 int DAC33_SRCBYP ;
 int DAC33_SRCLKDIV (int) ;
 int DAC33_SRC_REF_CLK_RATIO_A ;
 unsigned int DAC33_THRREG (int ) ;
 int DAC33_UTHR_MSB ;
 int DAC33_UTM (int ) ;
 int DAC33_WIDTH ;
 int DAC33_WLEN_16 ;
 int DAC33_WLEN_24 ;
 int DAC33_WLEN_MASK ;
 int EINVAL ;


 int dac33_oscwait (struct snd_soc_component*) ;
 void* dac33_read_reg_cache (struct snd_soc_component*,int ) ;
 int dac33_soft_power (struct snd_soc_component*,int) ;
 int dac33_write (struct snd_soc_component*,int ,int) ;
 int dac33_write16 (struct snd_soc_component*,int ,unsigned int) ;
 int dev_err (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tlv320dac33_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int dac33_prepare_chip(struct snd_pcm_substream *substream,
         struct snd_soc_component *component)
{
 struct tlv320dac33_priv *dac33 = snd_soc_component_get_drvdata(component);
 unsigned int oscset, ratioset, pwr_ctrl, reg_tmp;
 u8 aictrl_a, aictrl_b, fifoctrl_a;

 switch (substream->runtime->rate) {
 case 44100:
 case 48000:
  oscset = CALC_OSCSET(substream->runtime->rate, dac33->refclk);
  ratioset = CALC_RATIOSET(substream->runtime->rate,
      dac33->refclk);
  break;
 default:
  dev_err(component->dev, "unsupported rate %d\n",
   substream->runtime->rate);
  return -EINVAL;
 }


 aictrl_a = dac33_read_reg_cache(component, DAC33_SER_AUDIOIF_CTRL_A);
 aictrl_a &= ~(DAC33_NCYCL_MASK | DAC33_WLEN_MASK);

 fifoctrl_a = dac33_read_reg_cache(component, DAC33_FIFO_CTRL_A);
 fifoctrl_a &= ~DAC33_FIFOFLUSH;

 fifoctrl_a &= ~DAC33_WIDTH;
 switch (substream->runtime->format) {
 case 129:
  aictrl_a |= (DAC33_NCYCL_16 | DAC33_WLEN_16);
  fifoctrl_a |= DAC33_WIDTH;
  break;
 case 128:
  aictrl_a |= (DAC33_NCYCL_32 | DAC33_WLEN_24);
  break;
 default:
  dev_err(component->dev, "unsupported format %d\n",
   substream->runtime->format);
  return -EINVAL;
 }

 mutex_lock(&dac33->mutex);

 if (!dac33->chip_power) {




  mutex_unlock(&dac33->mutex);
  return 0;
 }

 dac33_soft_power(component, 0);
 dac33_soft_power(component, 1);

 reg_tmp = dac33_read_reg_cache(component, DAC33_INT_OSC_CTRL);
 dac33_write(component, DAC33_INT_OSC_CTRL, reg_tmp);


 dac33_write16(component, DAC33_INT_OSC_FREQ_RAT_A, oscset);


 dac33_write(component, DAC33_CALIB_TIME, 96);


 dac33_write(component, DAC33_INT_OSC_CTRL_B, DAC33_ADJTHRSHLD(2) |
       DAC33_ADJSTEP(1));


 dac33_write(component, DAC33_INT_OSC_CTRL_C, DAC33_REFDIV(4));

 pwr_ctrl = dac33_read_reg_cache(component, DAC33_PWR_CTRL);
 pwr_ctrl |= DAC33_OSCPDNB | DAC33_DACRPDNB | DAC33_DACLPDNB;
 dac33_write(component, DAC33_PWR_CTRL, pwr_ctrl);

 dac33_oscwait(component);

 if (dac33->fifo_mode) {


  dac33_write(component, DAC33_ASRC_CTRL_A, DAC33_SRCLKDIV(1));
  dac33_write(component, DAC33_ASRC_CTRL_B, 1);


  dac33_write16(component, DAC33_SRC_REF_CLK_RATIO_A, ratioset);


  dac33_write(component, DAC33_INTP_CTRL_A, DAC33_INTPM_AHIGH);
 } else {


  dac33_write(component, DAC33_ASRC_CTRL_A, DAC33_SRCBYP);
  dac33_write(component, DAC33_ASRC_CTRL_B, 0);
 }


 switch (dac33->fifo_mode) {
 case 131:
  dac33_write(component, DAC33_FIFO_IRQ_MODE_B,
       DAC33_ATM(DAC33_FIFO_IRQ_MODE_LEVEL));
  break;
 case 130:
  dac33_write(component, DAC33_FIFO_IRQ_MODE_A,
   DAC33_UTM(DAC33_FIFO_IRQ_MODE_LEVEL));
  break;
 default:

  break;
 }

 aictrl_b = dac33_read_reg_cache(component, DAC33_SER_AUDIOIF_CTRL_B);

 switch (dac33->fifo_mode) {
 case 131:






  fifoctrl_a &= ~DAC33_FBYPAS;
  fifoctrl_a &= ~DAC33_FAUTO;
  if (dac33->keep_bclk)
   aictrl_b |= DAC33_BCLKON;
  else
   aictrl_b &= ~DAC33_BCLKON;
  break;
 case 130:






  fifoctrl_a &= ~DAC33_FBYPAS;
  fifoctrl_a |= DAC33_FAUTO;
  if (dac33->keep_bclk)
   aictrl_b |= DAC33_BCLKON;
  else
   aictrl_b &= ~DAC33_BCLKON;
  break;
 default:





  fifoctrl_a |= DAC33_FBYPAS;
  aictrl_b |= DAC33_BCLKON;
  break;
 }

 dac33_write(component, DAC33_FIFO_CTRL_A, fifoctrl_a);
 dac33_write(component, DAC33_SER_AUDIOIF_CTRL_A, aictrl_a);
 dac33_write(component, DAC33_SER_AUDIOIF_CTRL_B, aictrl_b);
 if (dac33->fifo_mode)
  dac33_write(component, DAC33_SER_AUDIOIF_CTRL_C,
       dac33->burst_bclkdiv);
 else
  if (substream->runtime->format == 129)
   dac33_write(component, DAC33_SER_AUDIOIF_CTRL_C, 32);
  else
   dac33_write(component, DAC33_SER_AUDIOIF_CTRL_C, 16);

 switch (dac33->fifo_mode) {
 case 131:
  dac33_write16(component, DAC33_ATHR_MSB,
         DAC33_THRREG(dac33->alarm_threshold));
  break;
 case 130:




  dac33_write16(component, DAC33_UTHR_MSB, DAC33_THRREG(dac33->uthr));
  dac33_write16(component, DAC33_LTHR_MSB,
         DAC33_THRREG(DAC33_MODE7_MARGIN));
  break;
 default:
  break;
 }

 mutex_unlock(&dac33->mutex);

 return 0;
}
