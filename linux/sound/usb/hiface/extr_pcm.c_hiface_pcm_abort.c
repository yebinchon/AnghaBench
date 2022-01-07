
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_runtime {int panic; int stream_mutex; } ;
struct hiface_chip {struct pcm_runtime* pcm; } ;


 int hiface_pcm_stream_stop (struct pcm_runtime*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void hiface_pcm_abort(struct hiface_chip *chip)
{
 struct pcm_runtime *rt = chip->pcm;

 if (rt) {
  rt->panic = 1;

  mutex_lock(&rt->stream_mutex);
  hiface_pcm_stream_stop(rt);
  mutex_unlock(&rt->stream_mutex);
 }
}
