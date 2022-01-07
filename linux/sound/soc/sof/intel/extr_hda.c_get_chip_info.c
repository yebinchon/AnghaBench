
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sof_intel_dsp_desc {int dummy; } ;
struct sof_dev_desc {struct sof_intel_dsp_desc* chip_info; } ;
struct snd_sof_pdata {struct sof_dev_desc* desc; } ;



__attribute__((used)) static const struct sof_intel_dsp_desc
 *get_chip_info(struct snd_sof_pdata *pdata)
{
 const struct sof_dev_desc *desc = pdata->desc;
 const struct sof_intel_dsp_desc *chip_info;

 chip_info = desc->chip_info;

 return chip_info;
}
