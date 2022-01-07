
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct xfrm_state {TYPE_1__* repl; struct xfrm_replay_state_esn* replay_esn; } ;
struct xfrm_replay_state_esn {int replay_window; int seq; unsigned int* bmp; } ;
typedef int __be32 ;
struct TYPE_2__ {int (* notify ) (struct xfrm_state*,int ) ;} ;


 int XFRM_REPLAY_UPDATE ;
 unsigned int ntohl (int ) ;
 int stub1 (struct xfrm_state*,int ) ;
 scalar_t__ xfrm_aevent_is_on (int ) ;
 int xs_net (struct xfrm_state*) ;

__attribute__((used)) static void xfrm_replay_advance_bmp(struct xfrm_state *x, __be32 net_seq)
{
 unsigned int bitnr, nr, i;
 u32 diff;
 struct xfrm_replay_state_esn *replay_esn = x->replay_esn;
 u32 seq = ntohl(net_seq);
 u32 pos;

 if (!replay_esn->replay_window)
  return;

 pos = (replay_esn->seq - 1) % replay_esn->replay_window;

 if (seq > replay_esn->seq) {
  diff = seq - replay_esn->seq;

  if (diff < replay_esn->replay_window) {
   for (i = 1; i < diff; i++) {
    bitnr = (pos + i) % replay_esn->replay_window;
    nr = bitnr >> 5;
    bitnr = bitnr & 0x1F;
    replay_esn->bmp[nr] &= ~(1U << bitnr);
   }
  } else {
   nr = (replay_esn->replay_window - 1) >> 5;
   for (i = 0; i <= nr; i++)
    replay_esn->bmp[i] = 0;
  }

  bitnr = (pos + diff) % replay_esn->replay_window;
  replay_esn->seq = seq;
 } else {
  diff = replay_esn->seq - seq;

  if (pos >= diff)
   bitnr = (pos - diff) % replay_esn->replay_window;
  else
   bitnr = replay_esn->replay_window - (diff - pos);
 }

 nr = bitnr >> 5;
 bitnr = bitnr & 0x1F;
 replay_esn->bmp[nr] |= (1U << bitnr);

 if (xfrm_aevent_is_on(xs_net(x)))
  x->repl->notify(x, XFRM_REPLAY_UPDATE);
}
