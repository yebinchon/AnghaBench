
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcxhr {TYPE_3__* card; int mgr; int chip_idx; } ;
struct snd_pcm_substream {scalar_t__ stream; int number; TYPE_2__* runtime; } ;
struct pcxhr_stream {TYPE_1__* pipe; struct snd_pcm_substream* substream; } ;
struct pcxhr_rmh {int* cmd; int cmd_len; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int dma_addr; int dma_bytes; } ;
struct TYPE_4__ {int first_audio; } ;


 int CMD_UPDATE_R_BUFFERS ;
 int MASK_DSP_WORD ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 int dev_dbg (int ,char*,char,int ,void*,int,int) ;
 int dev_err (int ,char*,int) ;
 int pcxhr_init_rmh (struct pcxhr_rmh*,int ) ;
 int pcxhr_send_msg (int ,struct pcxhr_rmh*) ;
 int pcxhr_set_pipe_cmd_params (struct pcxhr_rmh*,int,int ,int,int ) ;
 int snd_BUG_ON (int) ;
 struct snd_pcxhr* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int pcxhr_update_r_buffer(struct pcxhr_stream *stream)
{
 int err, is_capture, stream_num;
 struct pcxhr_rmh rmh;
 struct snd_pcm_substream *subs = stream->substream;
 struct snd_pcxhr *chip = snd_pcm_substream_chip(subs);

 is_capture = (subs->stream == SNDRV_PCM_STREAM_CAPTURE);
 stream_num = is_capture ? 0 : subs->number;

 dev_dbg(chip->card->dev,
  "pcxhr_update_r_buffer(pcm%c%d) : addr(%p) bytes(%zx) subs(%d)\n",
  is_capture ? 'c' : 'p',
  chip->chip_idx, (void *)(long)subs->runtime->dma_addr,
  subs->runtime->dma_bytes, subs->number);

 pcxhr_init_rmh(&rmh, CMD_UPDATE_R_BUFFERS);
 pcxhr_set_pipe_cmd_params(&rmh, is_capture, stream->pipe->first_audio,
      stream_num, 0);


 snd_BUG_ON(subs->runtime->dma_bytes >= 0x200000);

 rmh.cmd[1] = subs->runtime->dma_bytes * 8;

 rmh.cmd[2] = subs->runtime->dma_addr >> 24;

 rmh.cmd[2] |= 1<<19;

 rmh.cmd[3] = subs->runtime->dma_addr & MASK_DSP_WORD;
 rmh.cmd_len = 4;
 err = pcxhr_send_msg(chip->mgr, &rmh);
 if (err)
  dev_err(chip->card->dev,
      "ERROR CMD_UPDATE_R_BUFFERS err=%x;\n", err);
 return err;
}
