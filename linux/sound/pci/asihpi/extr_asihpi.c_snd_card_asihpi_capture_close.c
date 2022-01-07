
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_card_asihpi_pcm {int h_stream; } ;
struct TYPE_2__ {struct snd_card_asihpi_pcm* private_data; } ;


 int hpi_handle_error (int ) ;
 int hpi_instream_close (int ) ;

__attribute__((used)) static int snd_card_asihpi_capture_close(struct snd_pcm_substream *substream)
{
 struct snd_card_asihpi_pcm *dpcm = substream->runtime->private_data;

 hpi_handle_error(hpi_instream_close(dpcm->h_stream));
 return 0;
}
