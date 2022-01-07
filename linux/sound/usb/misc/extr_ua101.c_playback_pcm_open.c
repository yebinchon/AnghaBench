
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int queue_length; int channels; struct snd_pcm_substream* substream; } ;
struct ua101 {int rate; int mutex; int states; int packets_per_second; TYPE_3__ playback; } ;
struct snd_pcm_substream {TYPE_2__* runtime; struct ua101* private_data; } ;
struct TYPE_4__ {int fifo_size; } ;
struct TYPE_5__ {TYPE_1__ hw; } ;


 int ALSA_CAPTURE_OPEN ;
 int ALSA_PLAYBACK_OPEN ;
 int DIV_ROUND_CLOSEST (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int set_stream_hw (struct ua101*,struct snd_pcm_substream*,int ) ;
 int start_usb_capture (struct ua101*) ;
 int start_usb_playback (struct ua101*) ;
 int stop_usb_capture (struct ua101*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int playback_pcm_open(struct snd_pcm_substream *substream)
{
 struct ua101 *ua = substream->private_data;
 int err;

 ua->playback.substream = substream;
 err = set_stream_hw(ua, substream, ua->playback.channels);
 if (err < 0)
  return err;
 substream->runtime->hw.fifo_size =
  DIV_ROUND_CLOSEST(ua->rate * ua->playback.queue_length,
      ua->packets_per_second);

 mutex_lock(&ua->mutex);
 err = start_usb_capture(ua);
 if (err < 0)
  goto error;
 err = start_usb_playback(ua);
 if (err < 0) {
  if (!test_bit(ALSA_CAPTURE_OPEN, &ua->states))
   stop_usb_capture(ua);
  goto error;
 }
 set_bit(ALSA_PLAYBACK_OPEN, &ua->states);
error:
 mutex_unlock(&ua->mutex);
 return err;
}
