
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int EINVAL ;
 int FM_I2SMRATE_I2SMBM ;
 int FM_I2SMRATE_I2SMBR ;
 unsigned int FV_I2SMBM_0PT25 ;
 unsigned int FV_I2SMBM_0PT5 ;
 unsigned int FV_I2SMBM_1 ;
 unsigned int FV_I2SMBM_2 ;
 unsigned int FV_I2SMBR_32 ;
 unsigned int FV_I2SMBR_44PT1 ;
 unsigned int FV_I2SMBR_48 ;
 unsigned int R_I2S1MRATE ;
 unsigned int R_I2S2MRATE ;
 unsigned int R_I2S3MRATE ;



 int dev_err (int ,char*,int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,unsigned int,int,unsigned int) ;

__attribute__((used)) static int set_aif_fs(struct snd_soc_component *component,
  unsigned int id,
  unsigned int rate)
{
 unsigned int reg;
 unsigned int br;
 unsigned int bm;
 int ret;

 switch (rate) {
 case 8000:
  br = FV_I2SMBR_32;
  bm = FV_I2SMBM_0PT25;
  break;
 case 16000:
  br = FV_I2SMBR_32;
  bm = FV_I2SMBM_0PT5;
  break;
 case 24000:
  br = FV_I2SMBR_48;
  bm = FV_I2SMBM_0PT5;
  break;
 case 32000:
  br = FV_I2SMBR_32;
  bm = FV_I2SMBM_1;
  break;
 case 48000:
  br = FV_I2SMBR_48;
  bm = FV_I2SMBM_1;
  break;
 case 96000:
  br = FV_I2SMBR_48;
  bm = FV_I2SMBM_2;
  break;
 case 11025:
  br = FV_I2SMBR_44PT1;
  bm = FV_I2SMBM_0PT25;
  break;
 case 22050:
  br = FV_I2SMBR_44PT1;
  bm = FV_I2SMBM_0PT5;
  break;
 case 44100:
  br = FV_I2SMBR_44PT1;
  bm = FV_I2SMBM_1;
  break;
 case 88200:
  br = FV_I2SMBR_44PT1;
  bm = FV_I2SMBM_2;
  break;
 default:
  ret = -EINVAL;
  dev_err(component->dev, "Unsupported sample rate (%d)\n", ret);
  return ret;
 }

 switch (id) {
 case 130:
  reg = R_I2S1MRATE;
  break;
 case 129:
  reg = R_I2S2MRATE;
  break;
 case 128:
  reg = R_I2S3MRATE;
  break;
 default:
  ret = -EINVAL;
  dev_err(component->dev, "DAI ID not recognized (%d)\n", ret);
  return ret;
 }

 ret = snd_soc_component_update_bits(component, reg,
   FM_I2SMRATE_I2SMBR | FM_I2SMRATE_I2SMBM, br|bm);
 if (ret < 0) {
  dev_err(component->dev,
    "Failed to update register (%d)\n", ret);
  return ret;
 }

 return 0;
}
