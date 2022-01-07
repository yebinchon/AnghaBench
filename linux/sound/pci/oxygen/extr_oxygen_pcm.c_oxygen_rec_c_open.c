
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int PCM_C ;
 int oxygen_open (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int oxygen_rec_c_open(struct snd_pcm_substream *substream)
{
 return oxygen_open(substream, PCM_C);
}
