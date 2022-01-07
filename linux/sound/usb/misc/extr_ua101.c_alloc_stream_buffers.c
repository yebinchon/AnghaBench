
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ua101_stream {unsigned int queue_length; unsigned int max_packet_bytes; TYPE_2__* buffers; } ;
struct ua101 {TYPE_1__* dev; } ;
struct TYPE_4__ {size_t size; int addr; int dma; } ;
struct TYPE_3__ {int dev; } ;


 unsigned int ARRAY_SIZE (TYPE_2__*) ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ MAX_QUEUE_LENGTH ;
 scalar_t__ MIN_QUEUE_LENGTH ;
 unsigned int PAGE_SIZE ;
 int dev_err (int *,char*) ;
 unsigned int max (unsigned int,unsigned int) ;
 void* min (unsigned int,unsigned int) ;
 unsigned int queue_length ;
 int usb_alloc_coherent (TYPE_1__*,size_t,int ,int *) ;

__attribute__((used)) static int alloc_stream_buffers(struct ua101 *ua, struct ua101_stream *stream)
{
 unsigned int remaining_packets, packets, packets_per_page, i;
 size_t size;

 stream->queue_length = queue_length;
 stream->queue_length = max(stream->queue_length,
       (unsigned int)MIN_QUEUE_LENGTH);
 stream->queue_length = min(stream->queue_length,
       (unsigned int)MAX_QUEUE_LENGTH);







 remaining_packets = stream->queue_length;
 packets_per_page = PAGE_SIZE / stream->max_packet_bytes;
 for (i = 0; i < ARRAY_SIZE(stream->buffers); ++i) {
  packets = min(remaining_packets, packets_per_page);
  size = packets * stream->max_packet_bytes;
  stream->buffers[i].addr =
   usb_alloc_coherent(ua->dev, size, GFP_KERNEL,
        &stream->buffers[i].dma);
  if (!stream->buffers[i].addr)
   return -ENOMEM;
  stream->buffers[i].size = size;
  remaining_packets -= packets;
  if (!remaining_packets)
   break;
 }
 if (remaining_packets) {
  dev_err(&ua->dev->dev, "too many packets\n");
  return -ENXIO;
 }
 return 0;
}
