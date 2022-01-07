
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_etm_packet_queue {scalar_t__ instr_count; scalar_t__ next_timestamp; scalar_t__ timestamp; } ;



__attribute__((used)) static void
cs_etm_decoder__reset_timestamp(struct cs_etm_packet_queue *packet_queue)
{
 packet_queue->timestamp = 0;
 packet_queue->next_timestamp = 0;
 packet_queue->instr_count = 0;
}
