
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_stream {int dma; scalar_t__ buffer; } ;


 int disable_dma (int ) ;

__attribute__((used)) static void au1000_dma_stop(struct audio_stream *stream)
{
 if (stream->buffer)
  disable_dma(stream->dma);
}
