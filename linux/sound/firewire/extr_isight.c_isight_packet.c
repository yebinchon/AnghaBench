
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {TYPE_1__* packets; int iso_buffer; } ;
struct isight {unsigned int packet_index; unsigned int total_samples; int first_packet; int context; TYPE_3__* unit; TYPE_2__ buffer; } ;
struct fw_iso_context {int dummy; } ;
struct audio_payload {scalar_t__ signature; int samples; int sample_total; int sample_count; } ;
struct TYPE_6__ {int device; } ;
struct TYPE_4__ {int offset; struct audio_payload* buffer; } ;


 unsigned int QUEUE_LENGTH ;
 int audio_packet ;
 unsigned int be32_to_cpu (int ) ;
 int be32_to_cpup (void*) ;
 scalar_t__ cpu_to_be32 (int) ;
 int dev_err (int *,char*,int) ;
 int fw_iso_context_queue (int ,int *,int *,int ) ;
 int fw_iso_context_queue_flush (int ) ;
 int isight_dropped_samples (struct isight*,unsigned int) ;
 int isight_pcm_abort (struct isight*) ;
 int isight_samples (struct isight*,int ,unsigned int) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void isight_packet(struct fw_iso_context *context, u32 cycle,
     size_t header_length, void *header, void *data)
{
 struct isight *isight = data;
 const struct audio_payload *payload;
 unsigned int index, length, count, total;
 int err;

 if (isight->packet_index < 0)
  return;
 index = isight->packet_index;
 payload = isight->buffer.packets[index].buffer;
 length = be32_to_cpup(header) >> 16;

 if (likely(length >= 16 &&
     payload->signature == cpu_to_be32(0x73676874 ))) {
  count = be32_to_cpu(payload->sample_count);
  if (likely(count <= (length - 16) / 4)) {
   total = be32_to_cpu(payload->sample_total);
   if (unlikely(total != isight->total_samples)) {
    if (!isight->first_packet)
     isight_dropped_samples(isight, total);
    isight->first_packet = 0;
    isight->total_samples = total;
   }

   isight_samples(isight, payload->samples, count);
   isight->total_samples += count;
  }
 }

 err = fw_iso_context_queue(isight->context, &audio_packet,
       &isight->buffer.iso_buffer,
       isight->buffer.packets[index].offset);
 if (err < 0) {
  dev_err(&isight->unit->device, "queueing error: %d\n", err);
  isight_pcm_abort(isight);
  isight->packet_index = -1;
  return;
 }
 fw_iso_context_queue_flush(isight->context);

 if (++index >= QUEUE_LENGTH)
  index = 0;
 isight->packet_index = index;
}
