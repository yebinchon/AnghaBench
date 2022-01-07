
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct viadev {int * substream; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct viadev* private_data; } ;



__attribute__((used)) static int snd_via82xx_pcm_close(struct snd_pcm_substream *substream)
{
 struct viadev *viadev = substream->runtime->private_data;

 viadev->substream = ((void*)0);
 return 0;
}
