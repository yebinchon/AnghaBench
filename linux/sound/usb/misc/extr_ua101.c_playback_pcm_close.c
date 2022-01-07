
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ua101 {int mutex; int states; } ;
struct snd_pcm_substream {struct ua101* private_data; } ;


 int ALSA_CAPTURE_OPEN ;
 int ALSA_PLAYBACK_OPEN ;
 int clear_bit (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stop_usb_capture (struct ua101*) ;
 int stop_usb_playback (struct ua101*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int playback_pcm_close(struct snd_pcm_substream *substream)
{
 struct ua101 *ua = substream->private_data;

 mutex_lock(&ua->mutex);
 stop_usb_playback(ua);
 clear_bit(ALSA_PLAYBACK_OPEN, &ua->states);
 if (!test_bit(ALSA_CAPTURE_OPEN, &ua->states))
  stop_usb_capture(ua);
 mutex_unlock(&ua->mutex);
 return 0;
}
