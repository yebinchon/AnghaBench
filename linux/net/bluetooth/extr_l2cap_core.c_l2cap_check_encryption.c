
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l2cap_chan {scalar_t__ chan_type; scalar_t__ sec_level; } ;


 scalar_t__ BT_SECURITY_FIPS ;
 scalar_t__ BT_SECURITY_HIGH ;
 scalar_t__ BT_SECURITY_MEDIUM ;
 int ECONNREFUSED ;
 scalar_t__ L2CAP_CHAN_CONN_ORIENTED ;
 int L2CAP_ENC_TIMEOUT ;
 int __clear_chan_timer (struct l2cap_chan*) ;
 int __set_chan_timer (struct l2cap_chan*,int ) ;
 int l2cap_chan_close (struct l2cap_chan*,int ) ;

__attribute__((used)) static inline void l2cap_check_encryption(struct l2cap_chan *chan, u8 encrypt)
{
 if (chan->chan_type != L2CAP_CHAN_CONN_ORIENTED)
  return;

 if (encrypt == 0x00) {
  if (chan->sec_level == BT_SECURITY_MEDIUM) {
   __set_chan_timer(chan, L2CAP_ENC_TIMEOUT);
  } else if (chan->sec_level == BT_SECURITY_HIGH ||
      chan->sec_level == BT_SECURITY_FIPS)
   l2cap_chan_close(chan, ECONNREFUSED);
 } else {
  if (chan->sec_level == BT_SECURITY_MEDIUM)
   __clear_chan_timer(chan);
 }
}
