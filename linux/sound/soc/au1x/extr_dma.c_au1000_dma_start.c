
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct audio_stream {int period_size; int dma; TYPE_2__* buffer; } ;
struct TYPE_4__ {TYPE_1__* next; int start; } ;
struct TYPE_3__ {int start; } ;


 int clear_dma_done0 (int ) ;
 int clear_dma_done1 (int ) ;
 int enable_dma_buffers (int ) ;
 scalar_t__ get_dma_active_buffer (int ) ;
 int init_dma (int ) ;
 int set_dma_addr0 (int ,int ) ;
 int set_dma_addr1 (int ,int ) ;
 int set_dma_count0 (int ,int) ;
 int set_dma_count1 (int ,int) ;
 int start_dma (int ) ;

__attribute__((used)) static void au1000_dma_start(struct audio_stream *stream)
{
 if (!stream->buffer)
  return;

 init_dma(stream->dma);
 if (get_dma_active_buffer(stream->dma) == 0) {
  clear_dma_done0(stream->dma);
  set_dma_addr0(stream->dma, stream->buffer->start);
  set_dma_count0(stream->dma, stream->period_size >> 1);
  set_dma_addr1(stream->dma, stream->buffer->next->start);
  set_dma_count1(stream->dma, stream->period_size >> 1);
 } else {
  clear_dma_done1(stream->dma);
  set_dma_addr1(stream->dma, stream->buffer->start);
  set_dma_count1(stream->dma, stream->period_size >> 1);
  set_dma_addr0(stream->dma, stream->buffer->next->start);
  set_dma_count0(stream->dma, stream->period_size >> 1);
 }
 enable_dma_buffers(stream->dma);
 start_dma(stream->dma);
}
