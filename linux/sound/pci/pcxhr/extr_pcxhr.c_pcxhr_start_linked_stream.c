
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcxhr {int nb_streams_capt; int nb_streams_play; struct pcxhr_stream* playback_stream; struct pcxhr_stream* capture_stream; } ;
struct pcxhr_stream {scalar_t__ status; int timer_period_frag; } ;
struct pcxhr_pipe {int first_audio; } ;
struct pcxhr_mgr {int num_cards; TYPE_1__* pci; int setup_mutex; int lock; scalar_t__ granularity; struct snd_pcxhr** chip; } ;
typedef int ktime_t ;
struct TYPE_2__ {int dev; } ;


 void* PCXHR_STREAM_STATUS_RUNNING ;
 scalar_t__ PCXHR_STREAM_STATUS_STARTED ;
 int dev_dbg (int *,char*,long,int) ;
 int dev_err (int *,char*,...) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcxhr_set_format (struct pcxhr_stream*) ;
 int pcxhr_set_pipe_state (struct pcxhr_mgr*,int,int,int) ;
 int pcxhr_set_stream_state (struct snd_pcxhr*,struct pcxhr_stream*) ;
 scalar_t__ pcxhr_stream_scheduled_get_pipe (struct pcxhr_stream*,struct pcxhr_pipe**) ;
 int pcxhr_update_r_buffer (struct pcxhr_stream*) ;

__attribute__((used)) static void pcxhr_start_linked_stream(struct pcxhr_mgr *mgr)
{
 int i, j, err;
 struct pcxhr_pipe *pipe;
 struct snd_pcxhr *chip;
 int capture_mask = 0;
 int playback_mask = 0;






 mutex_lock(&mgr->setup_mutex);


 for (i = 0; i < mgr->num_cards; i++) {
  chip = mgr->chip[i];
  for (j = 0; j < chip->nb_streams_capt; j++) {
   if (pcxhr_stream_scheduled_get_pipe(&chip->capture_stream[j], &pipe))
    capture_mask |= (1 << pipe->first_audio);
  }
  for (j = 0; j < chip->nb_streams_play; j++) {
   if (pcxhr_stream_scheduled_get_pipe(&chip->playback_stream[j], &pipe)) {
    playback_mask |= (1 << pipe->first_audio);
    break;


   }
  }
 }
 if (capture_mask == 0 && playback_mask == 0) {
  mutex_unlock(&mgr->setup_mutex);
  dev_err(&mgr->pci->dev, "pcxhr_start_linked_stream : no pipes\n");
  return;
 }

 dev_dbg(&mgr->pci->dev, "pcxhr_start_linked_stream : "
      "playback_mask=%x capture_mask=%x\n",
      playback_mask, capture_mask);


 err = pcxhr_set_pipe_state(mgr, playback_mask, capture_mask, 0);
 if (err) {
  mutex_unlock(&mgr->setup_mutex);
  dev_err(&mgr->pci->dev, "pcxhr_start_linked_stream : "
      "error stop pipes (P%x C%x)\n",
      playback_mask, capture_mask);
  return;
 }


 for (i = 0; i < mgr->num_cards; i++) {
  struct pcxhr_stream *stream;
  chip = mgr->chip[i];
  for (j = 0; j < chip->nb_streams_capt; j++) {
   stream = &chip->capture_stream[j];
   if (pcxhr_stream_scheduled_get_pipe(stream, &pipe)) {
    err = pcxhr_set_format(stream);
    err = pcxhr_update_r_buffer(stream);
   }
  }
  for (j = 0; j < chip->nb_streams_play; j++) {
   stream = &chip->playback_stream[j];
   if (pcxhr_stream_scheduled_get_pipe(stream, &pipe)) {
    err = pcxhr_set_format(stream);
    err = pcxhr_update_r_buffer(stream);
   }
  }
 }

 for (i = 0; i < mgr->num_cards; i++) {
  struct pcxhr_stream *stream;
  chip = mgr->chip[i];
  for (j = 0; j < chip->nb_streams_capt; j++) {
   stream = &chip->capture_stream[j];
   if (pcxhr_stream_scheduled_get_pipe(stream, &pipe))
    err = pcxhr_set_stream_state(chip, stream);
  }
  for (j = 0; j < chip->nb_streams_play; j++) {
   stream = &chip->playback_stream[j];
   if (pcxhr_stream_scheduled_get_pipe(stream, &pipe))
    err = pcxhr_set_stream_state(chip, stream);
  }
 }


 err = pcxhr_set_pipe_state(mgr, playback_mask, capture_mask, 1);
 if (err) {
  mutex_unlock(&mgr->setup_mutex);
  dev_err(&mgr->pci->dev, "pcxhr_start_linked_stream : "
      "error start pipes (P%x C%x)\n",
      playback_mask, capture_mask);
  return;
 }




 mutex_lock(&mgr->lock);
 for ( i =0; i < mgr->num_cards; i++) {
  struct pcxhr_stream *stream;
  chip = mgr->chip[i];
  for(j = 0; j < chip->nb_streams_capt; j++) {
   stream = &chip->capture_stream[j];
   if(stream->status == PCXHR_STREAM_STATUS_STARTED)
    stream->status = PCXHR_STREAM_STATUS_RUNNING;
  }
  for (j = 0; j < chip->nb_streams_play; j++) {
   stream = &chip->playback_stream[j];
   if (stream->status == PCXHR_STREAM_STATUS_STARTED) {

    stream->timer_period_frag += mgr->granularity;
    stream->status = PCXHR_STREAM_STATUS_RUNNING;
   }
  }
 }
 mutex_unlock(&mgr->lock);

 mutex_unlock(&mgr->setup_mutex);







}
