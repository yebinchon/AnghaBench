
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xfrm_state {TYPE_1__* repl; struct xfrm_replay_state_esn* replay_esn; } ;
struct xfrm_replay_state_esn {int replay_window; int seq; int seq_hi; unsigned int* bmp; } ;
typedef int __be32 ;
struct TYPE_2__ {int (* notify ) (struct xfrm_state*,int ) ;} ;


 int XFRM_REPLAY_UPDATE ;
 scalar_t__ likely (int) ;
 int ntohl (int ) ;
 int stub1 (struct xfrm_state*,int ) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ xfrm_aevent_is_on (int ) ;
 int xfrm_dev_state_advance_esn (struct xfrm_state*) ;
 int xfrm_replay_seqhi (struct xfrm_state*,int ) ;
 int xs_net (struct xfrm_state*) ;

__attribute__((used)) static void xfrm_replay_advance_esn(struct xfrm_state *x, __be32 net_seq)
{
 unsigned int bitnr, nr, i;
 int wrap;
 u32 diff, pos, seq, seq_hi;
 struct xfrm_replay_state_esn *replay_esn = x->replay_esn;

 if (!replay_esn->replay_window)
  return;

 seq = ntohl(net_seq);
 pos = (replay_esn->seq - 1) % replay_esn->replay_window;
 seq_hi = xfrm_replay_seqhi(x, net_seq);
 wrap = seq_hi - replay_esn->seq_hi;

 if ((!wrap && seq > replay_esn->seq) || wrap > 0) {
  if (likely(!wrap))
   diff = seq - replay_esn->seq;
  else
   diff = ~replay_esn->seq + seq + 1;

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

  if (unlikely(wrap > 0))
   replay_esn->seq_hi++;
 } else {
  diff = replay_esn->seq - seq;

  if (pos >= diff)
   bitnr = (pos - diff) % replay_esn->replay_window;
  else
   bitnr = replay_esn->replay_window - (diff - pos);
 }

 xfrm_dev_state_advance_esn(x);

 nr = bitnr >> 5;
 bitnr = bitnr & 0x1F;
 replay_esn->bmp[nr] |= (1U << bitnr);

 if (xfrm_aevent_is_on(xs_net(x)))
  x->repl->notify(x, XFRM_REPLAY_UPDATE);
}
