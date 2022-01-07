
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ua101_stream {TYPE_1__* buffers; } ;
struct ua101 {int dev; } ;
struct TYPE_2__ {int dma; int addr; int size; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int usb_free_coherent (int ,int ,int ,int ) ;

__attribute__((used)) static void free_stream_buffers(struct ua101 *ua, struct ua101_stream *stream)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(stream->buffers); ++i)
  usb_free_coherent(ua->dev,
      stream->buffers[i].size,
      stream->buffers[i].addr,
      stream->buffers[i].dma);
}
