
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_card_asihpi_pcm* private_data; } ;
struct snd_card_asihpi_pcm {scalar_t__ pcm_buf_elapsed_dma_ofs; scalar_t__ pcm_buf_dma_ofs; scalar_t__ pcm_buf_host_rw_ofs; int h_stream; } ;


 int hpi_handle_error (int ) ;
 int hpi_instream_reset (int ) ;
 int snd_printdd (char*,int ) ;

__attribute__((used)) static int snd_card_asihpi_capture_prepare(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_card_asihpi_pcm *dpcm = runtime->private_data;

 hpi_handle_error(hpi_instream_reset(dpcm->h_stream));
 dpcm->pcm_buf_host_rw_ofs = 0;
 dpcm->pcm_buf_dma_ofs = 0;
 dpcm->pcm_buf_elapsed_dma_ofs = 0;

 snd_printdd("Capture Prepare %d\n", substream->number);
 return 0;
}
