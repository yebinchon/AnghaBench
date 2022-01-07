
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int ax25_cb ;





 int AX25_POLLON ;

 int AX25_RESPONSE ;





 int ax25_disconnect (int *,int ) ;
 int ax25_send_control (int *,int const,int,int ) ;

__attribute__((used)) static int ax25_std_state2_machine(ax25_cb *ax25, struct sk_buff *skb, int frametype, int pf, int type)
{
 switch (frametype) {
 case 130:
 case 129:
  ax25_send_control(ax25, 135, pf, AX25_RESPONSE);
  break;

 case 136:
  ax25_send_control(ax25, 128, pf, AX25_RESPONSE);
  ax25_disconnect(ax25, 0);
  break;

 case 135:
 case 128:
  if (pf)
   ax25_disconnect(ax25, 0);
  break;

 case 134:
 case 133:
 case 132:
 case 131:
  if (pf) ax25_send_control(ax25, 135, AX25_POLLON, AX25_RESPONSE);
  break;

 default:
  break;
 }

 return 0;
}
