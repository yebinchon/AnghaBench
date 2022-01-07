
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {int replay; int replay_window; } ;
struct TYPE_4__ {scalar_t__ seq; unsigned int bitmap; } ;
struct TYPE_6__ {scalar_t__ replay_window; } ;
struct xfrm_state {TYPE_2__ stats; TYPE_1__ replay; TYPE_3__ props; } ;
struct sk_buff {int dummy; } ;
typedef int __be32 ;


 int EINVAL ;
 scalar_t__ likely (int) ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ unlikely (int) ;
 int xfrm_audit_state_replay (struct xfrm_state*,struct sk_buff*,int ) ;

__attribute__((used)) static int xfrm_replay_check(struct xfrm_state *x,
        struct sk_buff *skb, __be32 net_seq)
{
 u32 diff;
 u32 seq = ntohl(net_seq);

 if (!x->props.replay_window)
  return 0;

 if (unlikely(seq == 0))
  goto err;

 if (likely(seq > x->replay.seq))
  return 0;

 diff = x->replay.seq - seq;
 if (diff >= x->props.replay_window) {
  x->stats.replay_window++;
  goto err;
 }

 if (x->replay.bitmap & (1U << diff)) {
  x->stats.replay++;
  goto err;
 }
 return 0;

err:
 xfrm_audit_state_replay(x, skb, net_seq);
 return -EINVAL;
}
