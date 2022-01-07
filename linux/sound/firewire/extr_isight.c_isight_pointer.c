
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct isight* private_data; } ;
struct isight {int buffer_pointer; } ;
typedef int snd_pcm_uframes_t ;


 int READ_ONCE (int ) ;

__attribute__((used)) static snd_pcm_uframes_t isight_pointer(struct snd_pcm_substream *substream)
{
 struct isight *isight = substream->private_data;

 return READ_ONCE(isight->buffer_pointer);
}
