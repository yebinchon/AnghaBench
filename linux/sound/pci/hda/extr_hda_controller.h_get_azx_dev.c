
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct azx_dev {int dummy; } ;
struct TYPE_2__ {struct azx_dev* private_data; } ;



__attribute__((used)) static inline struct azx_dev *get_azx_dev(struct snd_pcm_substream *substream)
{
 return substream->runtime->private_data;
}
