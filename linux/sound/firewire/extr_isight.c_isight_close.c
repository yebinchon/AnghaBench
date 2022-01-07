
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct isight* private_data; } ;
struct isight {int unit; int buffer; } ;


 int iso_packets_buffer_destroy (int *,int ) ;

__attribute__((used)) static int isight_close(struct snd_pcm_substream *substream)
{
 struct isight *isight = substream->private_data;

 iso_packets_buffer_destroy(&isight->buffer, isight->unit);

 return 0;
}
