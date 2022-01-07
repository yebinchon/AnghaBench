
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_9__ {int state; } ;
typedef TYPE_1__ ax25_cb ;






 int ax25_decode (TYPE_1__*,struct sk_buff*,int*,int*,int*) ;
 int ax25_kick (TYPE_1__*) ;
 int ax25_std_state1_machine (TYPE_1__*,struct sk_buff*,int,int,int) ;
 int ax25_std_state2_machine (TYPE_1__*,struct sk_buff*,int,int,int) ;
 int ax25_std_state3_machine (TYPE_1__*,struct sk_buff*,int,int,int,int,int) ;
 int ax25_std_state4_machine (TYPE_1__*,struct sk_buff*,int,int,int,int,int) ;

int ax25_std_frame_in(ax25_cb *ax25, struct sk_buff *skb, int type)
{
 int queued = 0, frametype, ns, nr, pf;

 frametype = ax25_decode(ax25, skb, &ns, &nr, &pf);

 switch (ax25->state) {
 case 131:
  queued = ax25_std_state1_machine(ax25, skb, frametype, pf, type);
  break;
 case 130:
  queued = ax25_std_state2_machine(ax25, skb, frametype, pf, type);
  break;
 case 129:
  queued = ax25_std_state3_machine(ax25, skb, frametype, ns, nr, pf, type);
  break;
 case 128:
  queued = ax25_std_state4_machine(ax25, skb, frametype, ns, nr, pf, type);
  break;
 }

 ax25_kick(ax25);

 return queued;
}
