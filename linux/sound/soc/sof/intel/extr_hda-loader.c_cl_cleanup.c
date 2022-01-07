
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dummy; } ;
struct snd_dma_buffer {int * area; } ;
struct hdac_stream {scalar_t__ format_val; scalar_t__ bufsize; int * substream; scalar_t__ running; int stream_tag; } ;
struct hdac_ext_stream {struct hdac_stream hstream; } ;


 int HDA_DSP_HDA_BAR ;
 int HDA_DSP_SPIB_DISABLE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int SOF_HDA_ADSP_REG_CL_SD_BDLPL ;
 int SOF_HDA_ADSP_REG_CL_SD_BDLPU ;
 int SOF_STREAM_SD_OFFSET (struct hdac_stream*) ;
 int hda_dsp_stream_put (struct snd_sof_dev*,int ,int ) ;
 int hda_dsp_stream_spib_config (struct snd_sof_dev*,struct hdac_ext_stream*,int ,int ) ;
 int snd_dma_free_pages (struct snd_dma_buffer*) ;
 int snd_sof_dsp_write (struct snd_sof_dev*,int ,int,int ) ;

__attribute__((used)) static int cl_cleanup(struct snd_sof_dev *sdev, struct snd_dma_buffer *dmab,
        struct hdac_ext_stream *stream)
{
 struct hdac_stream *hstream = &stream->hstream;
 int sd_offset = SOF_STREAM_SD_OFFSET(hstream);
 int ret;

 ret = hda_dsp_stream_spib_config(sdev, stream, HDA_DSP_SPIB_DISABLE, 0);

 hda_dsp_stream_put(sdev, SNDRV_PCM_STREAM_PLAYBACK,
      hstream->stream_tag);
 hstream->running = 0;
 hstream->substream = ((void*)0);


 snd_sof_dsp_write(sdev, HDA_DSP_HDA_BAR,
     sd_offset + SOF_HDA_ADSP_REG_CL_SD_BDLPL, 0);
 snd_sof_dsp_write(sdev, HDA_DSP_HDA_BAR,
     sd_offset + SOF_HDA_ADSP_REG_CL_SD_BDLPU, 0);

 snd_sof_dsp_write(sdev, HDA_DSP_HDA_BAR, sd_offset, 0);
 snd_dma_free_pages(dmab);
 dmab->area = ((void*)0);
 hstream->bufsize = 0;
 hstream->format_val = 0;

 return ret;
}
