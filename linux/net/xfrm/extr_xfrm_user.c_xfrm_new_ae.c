
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {scalar_t__ state; } ;
struct xfrm_state {int lock; int replay_esn; TYPE_2__ km; } ;
struct xfrm_mark {int dummy; } ;
struct TYPE_4__ {int family; int proto; int spi; int daddr; } ;
struct xfrm_aevent_id {TYPE_1__ sa_id; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_flags; int nlmsg_pid; int nlmsg_seq; int nlmsg_type; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_6__ {int aevent; } ;
struct km_event {TYPE_3__ data; int portid; int seq; int event; } ;


 int EINVAL ;
 int ESRCH ;
 int NLM_F_REPLACE ;
 size_t XFRMA_ETIMER_THRESH ;
 size_t XFRMA_LTIME_VAL ;
 size_t XFRMA_REPLAY_ESN_VAL ;
 size_t XFRMA_REPLAY_THRESH ;
 size_t XFRMA_REPLAY_VAL ;
 int XFRM_AE_CU ;
 scalar_t__ XFRM_STATE_VALID ;
 int km_state_notify (struct xfrm_state*,struct km_event*) ;
 struct xfrm_aevent_id* nlmsg_data (struct nlmsghdr*) ;
 struct net* sock_net (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int xfrm_mark_get (struct nlattr**,struct xfrm_mark*) ;
 int xfrm_replay_verify_len (int ,struct nlattr*) ;
 struct xfrm_state* xfrm_state_lookup (struct net*,int ,int *,int ,int ,int ) ;
 int xfrm_state_put (struct xfrm_state*) ;
 int xfrm_update_ae_params (struct xfrm_state*,struct nlattr**,int) ;

__attribute__((used)) static int xfrm_new_ae(struct sk_buff *skb, struct nlmsghdr *nlh,
  struct nlattr **attrs)
{
 struct net *net = sock_net(skb->sk);
 struct xfrm_state *x;
 struct km_event c;
 int err = -EINVAL;
 u32 mark = 0;
 struct xfrm_mark m;
 struct xfrm_aevent_id *p = nlmsg_data(nlh);
 struct nlattr *rp = attrs[XFRMA_REPLAY_VAL];
 struct nlattr *re = attrs[XFRMA_REPLAY_ESN_VAL];
 struct nlattr *lt = attrs[XFRMA_LTIME_VAL];
 struct nlattr *et = attrs[XFRMA_ETIMER_THRESH];
 struct nlattr *rt = attrs[XFRMA_REPLAY_THRESH];

 if (!lt && !rp && !re && !et && !rt)
  return err;


 if (!(nlh->nlmsg_flags&NLM_F_REPLACE))
  return err;

 mark = xfrm_mark_get(attrs, &m);

 x = xfrm_state_lookup(net, mark, &p->sa_id.daddr, p->sa_id.spi, p->sa_id.proto, p->sa_id.family);
 if (x == ((void*)0))
  return -ESRCH;

 if (x->km.state != XFRM_STATE_VALID)
  goto out;

 err = xfrm_replay_verify_len(x->replay_esn, re);
 if (err)
  goto out;

 spin_lock_bh(&x->lock);
 xfrm_update_ae_params(x, attrs, 1);
 spin_unlock_bh(&x->lock);

 c.event = nlh->nlmsg_type;
 c.seq = nlh->nlmsg_seq;
 c.portid = nlh->nlmsg_pid;
 c.data.aevent = XFRM_AE_CU;
 km_state_notify(x, &c);
 err = 0;
out:
 xfrm_state_put(x);
 return err;
}
