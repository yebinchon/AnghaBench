
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_line6_pcm {int state_mutex; } ;
struct line6_pcm_stream {int dummy; } ;


 struct line6_pcm_stream* get_stream (struct snd_line6_pcm*,int) ;
 int line6_buffer_release (struct snd_line6_pcm*,struct line6_pcm_stream*,int) ;
 int line6_stream_stop (struct snd_line6_pcm*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void line6_pcm_release(struct snd_line6_pcm *line6pcm, int type)
{
 struct line6_pcm_stream *pstr;
 int dir;

 mutex_lock(&line6pcm->state_mutex);
 for (dir = 0; dir < 2; dir++)
  line6_stream_stop(line6pcm, dir, type);
 for (dir = 0; dir < 2; dir++) {
  pstr = get_stream(line6pcm, dir);
  line6_buffer_release(line6pcm, pstr, type);
 }
 mutex_unlock(&line6pcm->state_mutex);
}
