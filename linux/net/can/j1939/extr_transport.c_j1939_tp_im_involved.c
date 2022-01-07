
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_sk_buff_cb {int dummy; } ;


 int j1939_tp_im_receiver (struct j1939_sk_buff_cb const*) ;
 int j1939_tp_im_transmitter (struct j1939_sk_buff_cb const*) ;

__attribute__((used)) static int j1939_tp_im_involved(const struct j1939_sk_buff_cb *skcb, bool swap)
{
 if (swap)
  return j1939_tp_im_receiver(skcb);
 else
  return j1939_tp_im_transmitter(skcb);
}
