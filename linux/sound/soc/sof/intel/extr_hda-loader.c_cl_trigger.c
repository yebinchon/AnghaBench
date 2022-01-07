
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int code_loading; int waitq; } ;
struct hdac_stream {int index; int running; } ;
struct hdac_ext_stream {struct hdac_stream hstream; } ;


 int HDA_DSP_CL_TRIGGER_TIMEOUT ;
 int HDA_DSP_HDA_BAR ;

 int SOF_HDA_CL_DMA_SD_INT_MASK ;
 int SOF_HDA_INTCTL ;
 int SOF_HDA_SD_CTL_DMA_START ;
 int SOF_STREAM_SD_OFFSET (struct hdac_stream*) ;
 int hda_dsp_stream_trigger (struct snd_sof_dev*,struct hdac_ext_stream*,int) ;
 int snd_sof_dsp_update_bits (struct snd_sof_dev*,int ,int,int,int) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int cl_trigger(struct snd_sof_dev *sdev,
        struct hdac_ext_stream *stream, int cmd)
{
 struct hdac_stream *hstream = &stream->hstream;
 int sd_offset = SOF_STREAM_SD_OFFSET(hstream);


 switch (cmd) {
 case 128:
  wait_event_timeout(sdev->waitq, !sdev->code_loading,
       HDA_DSP_CL_TRIGGER_TIMEOUT);

  snd_sof_dsp_update_bits(sdev, HDA_DSP_HDA_BAR, SOF_HDA_INTCTL,
     1 << hstream->index,
     1 << hstream->index);

  snd_sof_dsp_update_bits(sdev, HDA_DSP_HDA_BAR,
     sd_offset,
     SOF_HDA_SD_CTL_DMA_START |
     SOF_HDA_CL_DMA_SD_INT_MASK,
     SOF_HDA_SD_CTL_DMA_START |
     SOF_HDA_CL_DMA_SD_INT_MASK);

  hstream->running = 1;
  return 0;
 default:
  return hda_dsp_stream_trigger(sdev, stream, cmd);
 }
}
