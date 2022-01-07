
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_emu8k_pcm {int dummy; } ;
struct TYPE_2__ {struct snd_emu8k_pcm* private_data; } ;


 int COPY_KERNEL ;
 int LOOP_WRITE (struct snd_emu8k_pcm*,unsigned long,void*,unsigned long,int ) ;
 unsigned long bytes_to_frames (TYPE_1__*,unsigned long) ;

__attribute__((used)) static int emu8k_pcm_copy_kernel(struct snd_pcm_substream *subs,
     int voice, unsigned long pos,
     void *src, unsigned long count)
{
 struct snd_emu8k_pcm *rec = subs->runtime->private_data;


 pos = bytes_to_frames(subs->runtime, pos);
 count = bytes_to_frames(subs->runtime, count);
 LOOP_WRITE(rec, pos, src, count, COPY_KERNEL);
 return 0;
}
