
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sof_dev {int dev; } ;


 int SDnFMT_BITS (int) ;
 int dev_warn (int ,char*,int) ;

__attribute__((used)) static inline u32 get_bits(struct snd_sof_dev *sdev, int sample_bits)
{
 switch (sample_bits) {
 case 8:
  return SDnFMT_BITS(0);
 case 16:
  return SDnFMT_BITS(1);
 case 20:
  return SDnFMT_BITS(2);
 case 24:
  return SDnFMT_BITS(3);
 case 32:
  return SDnFMT_BITS(4);
 default:
  dev_warn(sdev->dev, "can't find %d bits using 16bit\n",
    sample_bits);
  return SDnFMT_BITS(1);
 }
}
