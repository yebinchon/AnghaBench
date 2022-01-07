
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rfcomm_session {TYPE_1__* sock; } ;
struct l2cap_chan {int dst; int src; } ;
typedef int bdaddr_t ;
struct TYPE_4__ {struct l2cap_chan* chan; } ;
struct TYPE_3__ {int sk; } ;


 int bacpy (int *,int *) ;
 TYPE_2__* l2cap_pi (int ) ;

void rfcomm_session_getaddr(struct rfcomm_session *s, bdaddr_t *src, bdaddr_t *dst)
{
 struct l2cap_chan *chan = l2cap_pi(s->sock->sk)->chan;
 if (src)
  bacpy(src, &chan->src);
 if (dst)
  bacpy(dst, &chan->dst);
}
