
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* pcm; } ;
struct snd_pcm_substream {struct snd_pcm_substream* next; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_dai_stream {struct device* dmac_dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* streams; } ;
struct TYPE_3__ {struct snd_pcm_substream* substream; } ;


 int PREALLOC_BUFFER ;
 int PREALLOC_BUFFER_MAX ;
 int SNDRV_DMA_TYPE_DEV ;
 struct rsnd_priv* rsnd_io_to_priv (struct rsnd_dai_stream*) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;
 int snd_pcm_lib_preallocate_pages (struct snd_pcm_substream*,int ,struct device*,int ,int ) ;

__attribute__((used)) static int rsnd_preallocate_pages(struct snd_soc_pcm_runtime *rtd,
      struct rsnd_dai_stream *io,
      int stream)
{
 struct rsnd_priv *priv = rsnd_io_to_priv(io);
 struct device *dev = rsnd_priv_to_dev(priv);
 struct snd_pcm_substream *substream;






 if (io->dmac_dev)
  dev = io->dmac_dev;

 for (substream = rtd->pcm->streams[stream].substream;
      substream;
      substream = substream->next) {
  snd_pcm_lib_preallocate_pages(substream,
           SNDRV_DMA_TYPE_DEV,
           dev,
           PREALLOC_BUFFER, PREALLOC_BUFFER_MAX);
 }

 return 0;
}
