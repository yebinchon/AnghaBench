
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cs_etm_packet_queue {int dummy; } ;
typedef int ocsd_datapath_resp_t ;


 int CS_ETM_DISCONTINUITY ;
 int cs_etm_decoder__buffer_packet (struct cs_etm_packet_queue*,int const,int ) ;
 int cs_etm_decoder__reset_timestamp (struct cs_etm_packet_queue*) ;

__attribute__((used)) static ocsd_datapath_resp_t
cs_etm_decoder__buffer_discontinuity(struct cs_etm_packet_queue *queue,
         const uint8_t trace_chan_id)
{




 cs_etm_decoder__reset_timestamp(queue);
 return cs_etm_decoder__buffer_packet(queue, trace_chan_id,
          CS_ETM_DISCONTINUITY);
}
