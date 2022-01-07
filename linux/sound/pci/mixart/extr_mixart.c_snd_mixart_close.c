
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int number; TYPE_1__* runtime; } ;
struct snd_mixart {int chip_idx; TYPE_2__* card; struct mixart_mgr* mgr; } ;
struct mixart_stream {int * substream; int status; int * pipe; int pcm_number; } ;
struct mixart_mgr {scalar_t__ ref_count_rate; int setup_mutex; scalar_t__ sample_rate; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct mixart_stream* private_data; } ;


 int MIXART_STREAM_STATUS_FREE ;
 int dev_dbg (int ,char*,int ,int ,int ) ;
 int dev_err (int ,char*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snd_mixart_kill_ref_pipe (struct mixart_mgr*,int *,int ) ;
 struct snd_mixart* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_mixart_close(struct snd_pcm_substream *subs)
{
 struct snd_mixart *chip = snd_pcm_substream_chip(subs);
 struct mixart_mgr *mgr = chip->mgr;
 struct mixart_stream *stream = subs->runtime->private_data;

 mutex_lock(&mgr->setup_mutex);

 dev_dbg(chip->card->dev, "snd_mixart_close C%d/P%d/Sub%d\n",
  chip->chip_idx, stream->pcm_number, subs->number);


 if(--mgr->ref_count_rate == 0) {
  mgr->sample_rate = 0;
 }


 if (snd_mixart_kill_ref_pipe(mgr, stream->pipe, 0 ) < 0) {

  dev_err(chip->card->dev,
   "error snd_mixart_kill_ref_pipe C%dP%d\n",
   chip->chip_idx, stream->pcm_number);
 }

 stream->pipe = ((void*)0);
 stream->status = MIXART_STREAM_STATUS_FREE;
 stream->substream = ((void*)0);

 mutex_unlock(&mgr->setup_mutex);
 return 0;
}
