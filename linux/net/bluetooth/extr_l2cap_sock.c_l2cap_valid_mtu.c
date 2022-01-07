
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct l2cap_chan {int scid; } ;



 int L2CAP_DEFAULT_MIN_MTU ;
 int L2CAP_LE_MIN_MTU ;

__attribute__((used)) static bool l2cap_valid_mtu(struct l2cap_chan *chan, u16 mtu)
{
 switch (chan->scid) {
 case 128:
  if (mtu < L2CAP_LE_MIN_MTU)
   return 0;
  break;

 default:
  if (mtu < L2CAP_DEFAULT_MIN_MTU)
   return 0;
 }

 return 1;
}
