
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_pcm179x {unsigned int dacs; int hp_gain_offset; scalar_t__ hp_active; } ;
struct oxygen {scalar_t__* dac_volume; struct xonar_pcm179x* model_data; } ;
typedef int s8 ;


 int pcm1796_write_cached (struct oxygen*,unsigned int,int,scalar_t__) ;

__attribute__((used)) static void update_pcm1796_volume(struct oxygen *chip)
{
 struct xonar_pcm179x *data = chip->model_data;
 unsigned int i;
 s8 gain_offset;

 gain_offset = data->hp_active ? data->hp_gain_offset : 0;
 for (i = 0; i < data->dacs; ++i) {
  pcm1796_write_cached(chip, i, 16, chip->dac_volume[i * 2]
         + gain_offset);
  pcm1796_write_cached(chip, i, 17, chip->dac_volume[i * 2 + 1]
         + gain_offset);
  gain_offset = 0;
 }
}
