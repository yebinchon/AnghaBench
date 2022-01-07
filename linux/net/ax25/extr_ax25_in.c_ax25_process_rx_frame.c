
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_9__ {scalar_t__ state; TYPE_2__* ax25_dev; } ;
typedef TYPE_3__ ax25_cb ;
struct TYPE_7__ {int slave; } ;
struct TYPE_8__ {int* values; TYPE_1__ dama; } ;





 scalar_t__ AX25_STATE_0 ;
 size_t AX25_VALUES_PROTOCOL ;
 int ax25_ds_frame_in (TYPE_3__*,struct sk_buff*,int) ;
 int ax25_std_frame_in (TYPE_3__*,struct sk_buff*,int) ;

__attribute__((used)) static int ax25_process_rx_frame(ax25_cb *ax25, struct sk_buff *skb, int type, int dama)
{
 int queued = 0;

 if (ax25->state == AX25_STATE_0)
  return 0;

 switch (ax25->ax25_dev->values[AX25_VALUES_PROTOCOL]) {
 case 128:
 case 129:
  queued = ax25_std_frame_in(ax25, skb, type);
  break;
 }

 return queued;
}
