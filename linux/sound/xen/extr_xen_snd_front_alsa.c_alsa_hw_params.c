
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_snd_front_pcm_stream_info {int index; int shbuf; int pages; int num_pages; struct xen_snd_front_info* front_info; } ;
struct xen_snd_front_info {TYPE_1__* xb_dev; } ;
struct xen_front_pgdir_shbuf_cfg {int pages; int num_pages; int * pgdir; TYPE_1__* xb_dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
typedef int buf_cfg ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int ) ;
 int memset (struct xen_front_pgdir_shbuf_cfg*,int ,int) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int shbuf_setup_backstore (struct xen_snd_front_pcm_stream_info*,int ) ;
 int stream_free (struct xen_snd_front_pcm_stream_info*) ;
 struct xen_snd_front_pcm_stream_info* stream_get (struct snd_pcm_substream*) ;
 int xen_front_pgdir_shbuf_alloc (struct xen_front_pgdir_shbuf_cfg*) ;
 int xen_front_pgdir_shbuf_map (int *) ;

__attribute__((used)) static int alsa_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params)
{
 struct xen_snd_front_pcm_stream_info *stream = stream_get(substream);
 struct xen_snd_front_info *front_info = stream->front_info;
 struct xen_front_pgdir_shbuf_cfg buf_cfg;
 int ret;





 stream_free(stream);
 ret = shbuf_setup_backstore(stream, params_buffer_bytes(params));
 if (ret < 0)
  goto fail;

 memset(&buf_cfg, 0, sizeof(buf_cfg));
 buf_cfg.xb_dev = front_info->xb_dev;
 buf_cfg.pgdir = &stream->shbuf;
 buf_cfg.num_pages = stream->num_pages;
 buf_cfg.pages = stream->pages;

 ret = xen_front_pgdir_shbuf_alloc(&buf_cfg);
 if (ret < 0)
  goto fail;

 ret = xen_front_pgdir_shbuf_map(&stream->shbuf);
 if (ret < 0)
  goto fail;

 return 0;

fail:
 stream_free(stream);
 dev_err(&front_info->xb_dev->dev,
  "Failed to allocate buffers for stream with index %d\n",
  stream->index);
 return ret;
}
