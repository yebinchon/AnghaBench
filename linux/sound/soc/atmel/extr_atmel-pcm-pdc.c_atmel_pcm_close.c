
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct atmel_runtime_data {int dummy; } ;
struct TYPE_2__ {struct atmel_runtime_data* private_data; } ;


 int kfree (struct atmel_runtime_data*) ;

__attribute__((used)) static int atmel_pcm_close(struct snd_pcm_substream *substream)
{
 struct atmel_runtime_data *prtd = substream->runtime->private_data;

 kfree(prtd);
 return 0;
}
