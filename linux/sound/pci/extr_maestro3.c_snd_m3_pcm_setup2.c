
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_pcm_runtime {int channels; int rate; int format; } ;
struct snd_m3 {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct m3_dma {int in_lists; TYPE_1__ inst; int * index_list; void** index; } ;


 scalar_t__ CDATA_FREQUENCY ;
 int DP_SHIFT_COUNT ;
 int MEMTYPE_INTERNAL_DATA ;
 scalar_t__ SRC3_DIRECTION_OFFSET ;
 void* snd_m3_add_list (struct snd_m3*,int ,int) ;
 int snd_m3_assp_write (struct snd_m3*,int ,scalar_t__,int) ;
 int snd_pcm_format_width (int ) ;

__attribute__((used)) static void snd_m3_pcm_setup2(struct snd_m3 *chip, struct m3_dma *s,
         struct snd_pcm_runtime *runtime)
{
 u32 freq;




 if (! s->in_lists) {
  s->index[0] = snd_m3_add_list(chip, s->index_list[0],
           s->inst.data >> DP_SHIFT_COUNT);
  s->index[1] = snd_m3_add_list(chip, s->index_list[1],
           s->inst.data >> DP_SHIFT_COUNT);
  s->index[2] = snd_m3_add_list(chip, s->index_list[2],
           s->inst.data >> DP_SHIFT_COUNT);
  s->in_lists = 1;
 }


 snd_m3_assp_write(chip, MEMTYPE_INTERNAL_DATA,
     s->inst.data + SRC3_DIRECTION_OFFSET + 1,
     runtime->channels == 2 ? 0 : 1);

 snd_m3_assp_write(chip, MEMTYPE_INTERNAL_DATA,
     s->inst.data + SRC3_DIRECTION_OFFSET + 2,
     snd_pcm_format_width(runtime->format) == 16 ? 0 : 1);


 freq = ((runtime->rate << 15) + 24000 ) / 48000;
 if (freq)
  freq--;

 snd_m3_assp_write(chip, MEMTYPE_INTERNAL_DATA,
     s->inst.data + CDATA_FREQUENCY,
     freq);
}
