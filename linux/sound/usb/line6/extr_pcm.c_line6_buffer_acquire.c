
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_line6_pcm {int max_packet_size_out; int max_packet_size_in; TYPE_1__* line6; } ;
struct line6_pcm_stream {scalar_t__ buffer; int opened; } ;
struct TYPE_2__ {int iso_buffers; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LINE6_ISO_PACKETS ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int array3_size (int ,int ,int const) ;
 scalar_t__ kmalloc (int ,int ) ;
 int test_and_set_bit (int,int *) ;

__attribute__((used)) static int line6_buffer_acquire(struct snd_line6_pcm *line6pcm,
    struct line6_pcm_stream *pstr, int direction, int type)
{
 const int pkt_size =
  (direction == SNDRV_PCM_STREAM_PLAYBACK) ?
   line6pcm->max_packet_size_out :
   line6pcm->max_packet_size_in;


 if (!test_and_set_bit(type, &pstr->opened) && !pstr->buffer) {
  pstr->buffer =
   kmalloc(array3_size(line6pcm->line6->iso_buffers,
         LINE6_ISO_PACKETS, pkt_size),
    GFP_KERNEL);
  if (!pstr->buffer)
   return -ENOMEM;
 }
 return 0;
}
