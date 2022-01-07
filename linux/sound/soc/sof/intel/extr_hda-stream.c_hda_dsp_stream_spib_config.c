
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sof_dev {int dev; int * bar; } ;
struct hdac_stream {int index; } ;
struct hdac_ext_stream {int spib_addr; struct hdac_stream hstream; } ;


 int EINVAL ;
 size_t HDA_DSP_SPIB_BAR ;
 int SOF_HDA_ADSP_REG_CL_SPBFIFO_SPBFCCTL ;
 int dev_err (int ,char*) ;
 int snd_sof_dsp_update_bits (struct snd_sof_dev*,size_t,int ,int,int) ;
 int sof_io_write (struct snd_sof_dev*,int ,int) ;

int hda_dsp_stream_spib_config(struct snd_sof_dev *sdev,
          struct hdac_ext_stream *stream,
          int enable, u32 size)
{
 struct hdac_stream *hstream = &stream->hstream;
 u32 mask;

 if (!sdev->bar[HDA_DSP_SPIB_BAR]) {
  dev_err(sdev->dev, "error: address of spib capability is NULL\n");
  return -EINVAL;
 }

 mask = (1 << hstream->index);


 snd_sof_dsp_update_bits(sdev, HDA_DSP_SPIB_BAR,
    SOF_HDA_ADSP_REG_CL_SPBFIFO_SPBFCCTL, mask,
    enable << hstream->index);


 sof_io_write(sdev, stream->spib_addr, size);

 return 0;
}
