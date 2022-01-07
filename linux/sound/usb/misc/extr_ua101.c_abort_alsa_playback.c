
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int substream; } ;
struct ua101 {TYPE_1__ playback; int states; } ;


 int ALSA_PLAYBACK_RUNNING ;
 int snd_pcm_stop_xrun (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void abort_alsa_playback(struct ua101 *ua)
{
 if (test_bit(ALSA_PLAYBACK_RUNNING, &ua->states))
  snd_pcm_stop_xrun(ua->playback.substream);
}
