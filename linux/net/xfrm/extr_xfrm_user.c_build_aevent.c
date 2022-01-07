
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int reqid; int saddr; int family; } ;
struct TYPE_5__ {int proto; int spi; int daddr; } ;
struct xfrm_state {int replay_maxdiff; int replay_maxage; int if_id; int mark; int curlft; int replay; int * replay_esn; TYPE_2__ props; TYPE_1__ id; } ;
struct TYPE_8__ {int proto; int family; int spi; int daddr; } ;
struct xfrm_aevent_id {int flags; int reqid; int saddr; TYPE_4__ sa_id; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_7__ {int aevent; } ;
struct km_event {TYPE_3__ data; int seq; int portid; } ;


 int EMSGSIZE ;
 int HZ ;
 int XFRMA_ETIMER_THRESH ;
 int XFRMA_LTIME_VAL ;
 int XFRMA_PAD ;
 int XFRMA_REPLAY_ESN_VAL ;
 int XFRMA_REPLAY_THRESH ;
 int XFRMA_REPLAY_VAL ;
 int XFRM_AE_ETHR ;
 int XFRM_AE_RTHR ;
 int XFRM_MSG_NEWAE ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_4__*,int ,int) ;
 int nla_put (struct sk_buff*,int ,int,int *) ;
 int nla_put_64bit (struct sk_buff*,int ,int,int *,int ) ;
 int nla_put_u32 (struct sk_buff*,int ,int) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct xfrm_aevent_id* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 int xfrm_if_id_put (struct sk_buff*,int ) ;
 int xfrm_mark_put (struct sk_buff*,int *) ;
 int xfrm_replay_state_esn_len (int *) ;

__attribute__((used)) static int build_aevent(struct sk_buff *skb, struct xfrm_state *x, const struct km_event *c)
{
 struct xfrm_aevent_id *id;
 struct nlmsghdr *nlh;
 int err;

 nlh = nlmsg_put(skb, c->portid, c->seq, XFRM_MSG_NEWAE, sizeof(*id), 0);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 id = nlmsg_data(nlh);
 memset(&id->sa_id, 0, sizeof(id->sa_id));
 memcpy(&id->sa_id.daddr, &x->id.daddr, sizeof(x->id.daddr));
 id->sa_id.spi = x->id.spi;
 id->sa_id.family = x->props.family;
 id->sa_id.proto = x->id.proto;
 memcpy(&id->saddr, &x->props.saddr, sizeof(x->props.saddr));
 id->reqid = x->props.reqid;
 id->flags = c->data.aevent;

 if (x->replay_esn) {
  err = nla_put(skb, XFRMA_REPLAY_ESN_VAL,
         xfrm_replay_state_esn_len(x->replay_esn),
         x->replay_esn);
 } else {
  err = nla_put(skb, XFRMA_REPLAY_VAL, sizeof(x->replay),
         &x->replay);
 }
 if (err)
  goto out_cancel;
 err = nla_put_64bit(skb, XFRMA_LTIME_VAL, sizeof(x->curlft), &x->curlft,
       XFRMA_PAD);
 if (err)
  goto out_cancel;

 if (id->flags & XFRM_AE_RTHR) {
  err = nla_put_u32(skb, XFRMA_REPLAY_THRESH, x->replay_maxdiff);
  if (err)
   goto out_cancel;
 }
 if (id->flags & XFRM_AE_ETHR) {
  err = nla_put_u32(skb, XFRMA_ETIMER_THRESH,
      x->replay_maxage * 10 / HZ);
  if (err)
   goto out_cancel;
 }
 err = xfrm_mark_put(skb, &x->mark);
 if (err)
  goto out_cancel;

 err = xfrm_if_id_put(skb, x->if_id);
 if (err)
  goto out_cancel;

 nlmsg_end(skb, nlh);
 return 0;

out_cancel:
 nlmsg_cancel(skb, nlh);
 return err;
}
