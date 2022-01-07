
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_etm_packet_queue {scalar_t__ packet_count; int head; struct cs_etm_packet* packet_buffer; } ;
struct cs_etm_packet {int dummy; } ;


 int CS_ETM_PACKET_MAX_BUFFER ;
 int EINVAL ;

int cs_etm_decoder__get_packet(struct cs_etm_packet_queue *packet_queue,
          struct cs_etm_packet *packet)
{
 if (!packet_queue || !packet)
  return -EINVAL;


 if (packet_queue->packet_count == 0)
  return 0;
 packet_queue->head = (packet_queue->head + 1) &
        (CS_ETM_PACKET_MAX_BUFFER - 1);

 *packet = packet_queue->packet_buffer[packet_queue->head];

 packet_queue->packet_count--;

 return 1;
}
