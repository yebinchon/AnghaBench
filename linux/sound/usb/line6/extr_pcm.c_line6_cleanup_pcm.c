
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm {int dummy; } ;
struct snd_line6_pcm {TYPE_1__* line6; int in; int out; } ;
struct TYPE_2__ {int iso_buffers; } ;


 int cleanup_urbs (int *,int ) ;
 int kfree (struct snd_line6_pcm*) ;
 struct snd_line6_pcm* snd_pcm_chip (struct snd_pcm*) ;

__attribute__((used)) static void line6_cleanup_pcm(struct snd_pcm *pcm)
{
 struct snd_line6_pcm *line6pcm = snd_pcm_chip(pcm);

 cleanup_urbs(&line6pcm->out, line6pcm->line6->iso_buffers);
 cleanup_urbs(&line6pcm->in, line6pcm->line6->iso_buffers);
 kfree(line6pcm);
}
