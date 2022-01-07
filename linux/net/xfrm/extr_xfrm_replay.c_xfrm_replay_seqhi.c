
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int flags; } ;
struct xfrm_state {TYPE_1__ props; struct xfrm_replay_state_esn* replay_esn; } ;
struct xfrm_replay_state_esn {scalar_t__ seq_hi; scalar_t__ seq; int replay_window; } ;
typedef int __be32 ;


 int XFRM_STATE_ESN ;
 scalar_t__ likely (int) ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ unlikely (int) ;

u32 xfrm_replay_seqhi(struct xfrm_state *x, __be32 net_seq)
{
 u32 seq, seq_hi, bottom;
 struct xfrm_replay_state_esn *replay_esn = x->replay_esn;

 if (!(x->props.flags & XFRM_STATE_ESN))
  return 0;

 seq = ntohl(net_seq);
 seq_hi = replay_esn->seq_hi;
 bottom = replay_esn->seq - replay_esn->replay_window + 1;

 if (likely(replay_esn->seq >= replay_esn->replay_window - 1)) {

  if (unlikely(seq < bottom))
   seq_hi++;
 } else {

  if (unlikely(seq >= bottom))
   seq_hi--;
 }

 return seq_hi;
}
