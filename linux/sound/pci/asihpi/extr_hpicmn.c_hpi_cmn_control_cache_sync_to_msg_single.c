
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef void* u16 ;
struct TYPE_22__ {int * an_log_value; } ;
struct TYPE_23__ {TYPE_5__ c; } ;
struct hpi_response {TYPE_6__ u; } ;
struct TYPE_16__ {int param1; int attribute; int param2; } ;
struct TYPE_17__ {TYPE_12__ c; } ;
struct hpi_message {TYPE_13__ u; } ;
struct TYPE_14__ {int sample_rate; void* source_index; void* source; } ;
struct TYPE_26__ {int format; } ;
struct TYPE_25__ {int format; } ;
struct TYPE_24__ {void* phantom_state; } ;
struct TYPE_21__ {int * an_log; int flags; } ;
struct TYPE_20__ {void* mode; } ;
struct TYPE_19__ {void* source_node_index; void* source_node_type; } ;
struct TYPE_18__ {int control_type; } ;
struct TYPE_15__ {TYPE_10__ clk; TYPE_9__ aes3rx; TYPE_8__ aes3tx; TYPE_7__ microphone; TYPE_4__ vol; TYPE_3__ mode; TYPE_2__ mux; TYPE_1__ i; } ;
struct hpi_control_cache_single {TYPE_11__ u; } ;


 int HPI_AESEBURX_FORMAT ;
 int HPI_AESEBUTX_FORMAT ;
 int HPI_CHANNEL_MODE_MODE ;
 int HPI_LEVEL_GAIN ;
 int HPI_MICROPHONE_PHANTOM_POWER ;
 int HPI_MULTIPLEXER_SOURCE ;
 int HPI_SAMPLECLOCK_SAMPLERATE ;
 int HPI_SAMPLECLOCK_SOURCE ;
 int HPI_SAMPLECLOCK_SOURCE_INDEX ;
 int HPI_VOLUME_FLAG_MUTED ;
 int HPI_VOLUME_GAIN ;
 int HPI_VOLUME_MUTE ;

void hpi_cmn_control_cache_sync_to_msg_single(struct hpi_control_cache_single
 *pC, struct hpi_message *phm, struct hpi_response *phr)
{
 switch (pC->u.i.control_type) {
 case 128:
  if (phm->u.c.attribute == HPI_VOLUME_GAIN) {
   pC->u.vol.an_log[0] = phr->u.c.an_log_value[0];
   pC->u.vol.an_log[1] = phr->u.c.an_log_value[1];
  } else if (phm->u.c.attribute == HPI_VOLUME_MUTE) {
   if (phm->u.c.param1)
    pC->u.vol.flags |= HPI_VOLUME_FLAG_MUTED;
   else
    pC->u.vol.flags &= ~HPI_VOLUME_FLAG_MUTED;
  }
  break;
 case 130:

  if (phm->u.c.attribute == HPI_MULTIPLEXER_SOURCE) {
   pC->u.mux.source_node_type = (u16)phm->u.c.param1;
   pC->u.mux.source_node_index = (u16)phm->u.c.param2;
  }
  break;
 case 133:

  if (phm->u.c.attribute == HPI_CHANNEL_MODE_MODE)
   pC->u.mode.mode = (u16)phm->u.c.param1;
  break;
 case 132:
  if (phm->u.c.attribute == HPI_LEVEL_GAIN) {
   pC->u.vol.an_log[0] = phr->u.c.an_log_value[0];
   pC->u.vol.an_log[1] = phr->u.c.an_log_value[1];
  }
  break;
 case 131:
  if (phm->u.c.attribute == HPI_MICROPHONE_PHANTOM_POWER)
   pC->u.microphone.phantom_state = (u16)phm->u.c.param1;
  break;
 case 134:
  if (phm->u.c.attribute == HPI_AESEBUTX_FORMAT)
   pC->u.aes3tx.format = phm->u.c.param1;
  break;
 case 135:
  if (phm->u.c.attribute == HPI_AESEBURX_FORMAT)
   pC->u.aes3rx.format = phm->u.c.param1;
  break;
 case 129:
  if (phm->u.c.attribute == HPI_SAMPLECLOCK_SOURCE)
   pC->u.clk.source = (u16)phm->u.c.param1;
  else if (phm->u.c.attribute == HPI_SAMPLECLOCK_SOURCE_INDEX)
   pC->u.clk.source_index = (u16)phm->u.c.param1;
  else if (phm->u.c.attribute == HPI_SAMPLECLOCK_SAMPLERATE)
   pC->u.clk.sample_rate = phm->u.c.param1;
  break;
 default:
  break;
 }
}
