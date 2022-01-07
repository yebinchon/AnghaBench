
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_sh_dac {TYPE_2__* pdata; int data_buffer; int buffer_size; TYPE_1__* substream; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_runtime {int buffer_size; } ;
struct TYPE_4__ {int buffer_size; } ;
struct TYPE_3__ {struct snd_pcm_runtime* runtime; } ;


 int memset (int ,int ,int ) ;
 struct snd_sh_dac* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_sh_dac_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct snd_sh_dac *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = chip->substream->runtime;

 chip->buffer_size = runtime->buffer_size;
 memset(chip->data_buffer, 0, chip->pdata->buffer_size);

 return 0;
}
