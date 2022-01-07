
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x25_sock {TYPE_1__* neighbour; } ;
struct sock {int dummy; } ;
struct sk_buff {unsigned char* data; } ;
struct TYPE_2__ {scalar_t__ extended; } ;






 unsigned char X25_DATA ;

 unsigned char X25_D_BIT ;
 int X25_EXT_MIN_LEN ;
 unsigned char X25_EXT_M_BIT ;
 int X25_ILLEGAL ;


 unsigned char X25_Q_BIT ;


 unsigned char X25_REJ ;




 unsigned char X25_RNR ;
 unsigned char X25_RR ;
 int X25_STD_MIN_LEN ;
 unsigned char X25_STD_M_BIT ;
 int pr_debug (char*,unsigned char*) ;
 int pskb_may_pull (struct sk_buff*,int ) ;
 struct x25_sock* x25_sk (struct sock*) ;

int x25_decode(struct sock *sk, struct sk_buff *skb, int *ns, int *nr, int *q,
        int *d, int *m)
{
 struct x25_sock *x25 = x25_sk(sk);
 unsigned char *frame;

 if (!pskb_may_pull(skb, X25_STD_MIN_LEN))
  return X25_ILLEGAL;
 frame = skb->data;

 *ns = *nr = *q = *d = *m = 0;

 switch (frame[2]) {
 case 139:
 case 140:
 case 137:
 case 138:
 case 135:
 case 134:
 case 130:
 case 131:
 case 128:
 case 129:
 case 132:
 case 133:
 case 136:
  return frame[2];
 }

 if (x25->neighbour->extended) {
  if (frame[2] == X25_RR ||
      frame[2] == X25_RNR ||
      frame[2] == X25_REJ) {
   if (!pskb_may_pull(skb, X25_EXT_MIN_LEN))
    return X25_ILLEGAL;
   frame = skb->data;

   *nr = (frame[3] >> 1) & 0x7F;
   return frame[2];
  }
 } else {
  if ((frame[2] & 0x1F) == X25_RR ||
      (frame[2] & 0x1F) == X25_RNR ||
      (frame[2] & 0x1F) == X25_REJ) {
   *nr = (frame[2] >> 5) & 0x07;
   return frame[2] & 0x1F;
  }
 }

 if (x25->neighbour->extended) {
  if ((frame[2] & 0x01) == X25_DATA) {
   if (!pskb_may_pull(skb, X25_EXT_MIN_LEN))
    return X25_ILLEGAL;
   frame = skb->data;

   *q = (frame[0] & X25_Q_BIT) == X25_Q_BIT;
   *d = (frame[0] & X25_D_BIT) == X25_D_BIT;
   *m = (frame[3] & X25_EXT_M_BIT) == X25_EXT_M_BIT;
   *nr = (frame[3] >> 1) & 0x7F;
   *ns = (frame[2] >> 1) & 0x7F;
   return X25_DATA;
  }
 } else {
  if ((frame[2] & 0x01) == X25_DATA) {
   *q = (frame[0] & X25_Q_BIT) == X25_Q_BIT;
   *d = (frame[0] & X25_D_BIT) == X25_D_BIT;
   *m = (frame[2] & X25_STD_M_BIT) == X25_STD_M_BIT;
   *nr = (frame[2] >> 5) & 0x07;
   *ns = (frame[2] >> 1) & 0x07;
   return X25_DATA;
  }
 }

 pr_debug("invalid PLP frame %3ph\n", frame);

 return X25_ILLEGAL;
}
