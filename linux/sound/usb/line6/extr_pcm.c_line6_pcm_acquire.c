
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_line6_pcm {int state_mutex; } ;
struct line6_pcm_stream {int running; } ;


 struct line6_pcm_stream* get_stream (struct snd_line6_pcm*,int) ;
 int line6_buffer_acquire (struct snd_line6_pcm*,struct line6_pcm_stream*,int,int) ;
 int line6_pcm_release (struct snd_line6_pcm*,int) ;
 int line6_stream_start (struct snd_line6_pcm*,int,int) ;
 int line6_wait_clear_audio_urbs (struct snd_line6_pcm*,struct line6_pcm_stream*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int line6_pcm_acquire(struct snd_line6_pcm *line6pcm, int type, bool start)
{
 struct line6_pcm_stream *pstr;
 int ret = 0, dir;


 mutex_lock(&line6pcm->state_mutex);
 for (dir = 0; dir < 2; dir++) {
  pstr = get_stream(line6pcm, dir);
  ret = line6_buffer_acquire(line6pcm, pstr, dir, type);
  if (ret < 0)
   goto error;
  if (!pstr->running)
   line6_wait_clear_audio_urbs(line6pcm, pstr);
 }
 if (start) {
  for (dir = 0; dir < 2; dir++) {
   ret = line6_stream_start(line6pcm, dir, type);
   if (ret < 0)
    goto error;
  }
 }
 error:
 mutex_unlock(&line6pcm->state_mutex);
 if (ret < 0)
  line6_pcm_release(line6pcm, type);
 return ret;
}
