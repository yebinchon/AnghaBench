
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_7__ {int state; } ;
typedef TYPE_1__ ax25_cb ;





 int ax25_decode (TYPE_1__*,struct sk_buff*,int*,int*,int*) ;
 int ax25_ds_state1_machine (TYPE_1__*,struct sk_buff*,int,int,int) ;
 int ax25_ds_state2_machine (TYPE_1__*,struct sk_buff*,int,int,int) ;
 int ax25_ds_state3_machine (TYPE_1__*,struct sk_buff*,int,int,int,int,int) ;

int ax25_ds_frame_in(ax25_cb *ax25, struct sk_buff *skb, int type)
{
 int queued = 0, frametype, ns, nr, pf;

 frametype = ax25_decode(ax25, skb, &ns, &nr, &pf);

 switch (ax25->state) {
 case 130:
  queued = ax25_ds_state1_machine(ax25, skb, frametype, pf, type);
  break;
 case 129:
  queued = ax25_ds_state2_machine(ax25, skb, frametype, pf, type);
  break;
 case 128:
  queued = ax25_ds_state3_machine(ax25, skb, frametype, ns, nr, pf, type);
  break;
 }

 return queued;
}
