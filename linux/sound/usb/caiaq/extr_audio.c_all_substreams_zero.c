
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int MAX_STREAMS ;

__attribute__((used)) static int
all_substreams_zero(struct snd_pcm_substream **subs)
{
 int i;
 for (i = 0; i < MAX_STREAMS; i++)
  if (subs[i] != ((void*)0))
   return 0;
 return 1;
}
