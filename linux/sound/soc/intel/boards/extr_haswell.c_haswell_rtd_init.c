
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_pdata {struct sst_hsw* dsp; } ;
struct sst_hsw {int dummy; } ;
struct snd_soc_pcm_runtime {int dev; } ;
struct snd_soc_component {int dev; } ;


 int DRV_NAME ;
 int SST_HSW_DEVICE_CLOCK_MASTER ;
 int SST_HSW_DEVICE_MCLK_FREQ_24_MHZ ;
 int SST_HSW_DEVICE_SSP_0 ;
 int dev_err (int ,char*) ;
 struct sst_pdata* dev_get_platdata (int ) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 int sst_hsw_device_set_config (struct sst_hsw*,int ,int ,int ,int) ;

__attribute__((used)) static int haswell_rtd_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct sst_pdata *pdata = dev_get_platdata(component->dev);
 struct sst_hsw *haswell = pdata->dsp;
 int ret;


 ret = sst_hsw_device_set_config(haswell, SST_HSW_DEVICE_SSP_0,
  SST_HSW_DEVICE_MCLK_FREQ_24_MHZ,
  SST_HSW_DEVICE_CLOCK_MASTER, 9);
 if (ret < 0) {
  dev_err(rtd->dev, "failed to set device config\n");
  return ret;
 }

 return 0;
}
