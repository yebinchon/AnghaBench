#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  reqid; int /*<<< orphan*/  saddr; int /*<<< orphan*/  family; } ;
struct TYPE_5__ {int /*<<< orphan*/  proto; int /*<<< orphan*/  spi; int /*<<< orphan*/  daddr; } ;
struct xfrm_state {int replay_maxdiff; int replay_maxage; int /*<<< orphan*/  if_id; int /*<<< orphan*/  mark; int /*<<< orphan*/  curlft; int /*<<< orphan*/  replay; int /*<<< orphan*/ * replay_esn; TYPE_2__ props; TYPE_1__ id; } ;
struct TYPE_8__ {int /*<<< orphan*/  proto; int /*<<< orphan*/  family; int /*<<< orphan*/  spi; int /*<<< orphan*/  daddr; } ;
struct xfrm_aevent_id {int flags; int /*<<< orphan*/  reqid; int /*<<< orphan*/  saddr; TYPE_4__ sa_id; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_7__ {int aevent; } ;
struct km_event {TYPE_3__ data; int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int HZ ; 
 int /*<<< orphan*/  XFRMA_ETIMER_THRESH ; 
 int /*<<< orphan*/  XFRMA_LTIME_VAL ; 
 int /*<<< orphan*/  XFRMA_PAD ; 
 int /*<<< orphan*/  XFRMA_REPLAY_ESN_VAL ; 
 int /*<<< orphan*/  XFRMA_REPLAY_THRESH ; 
 int /*<<< orphan*/  XFRMA_REPLAY_VAL ; 
 int XFRM_AE_ETHR ; 
 int XFRM_AE_RTHR ; 
 int /*<<< orphan*/  XFRM_MSG_NEWAE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlmsghdr*) ; 
 struct xfrm_aevent_id* FUNC6 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct xfrm_state *x, const struct km_event *c)
{
	struct xfrm_aevent_id *id;
	struct nlmsghdr *nlh;
	int err;

	nlh = FUNC8(skb, c->portid, c->seq, XFRM_MSG_NEWAE, sizeof(*id), 0);
	if (nlh == NULL)
		return -EMSGSIZE;

	id = FUNC6(nlh);
	FUNC1(&id->sa_id, 0, sizeof(id->sa_id));
	FUNC0(&id->sa_id.daddr, &x->id.daddr, sizeof(x->id.daddr));
	id->sa_id.spi = x->id.spi;
	id->sa_id.family = x->props.family;
	id->sa_id.proto = x->id.proto;
	FUNC0(&id->saddr, &x->props.saddr, sizeof(x->props.saddr));
	id->reqid = x->props.reqid;
	id->flags = c->data.aevent;

	if (x->replay_esn) {
		err = FUNC2(skb, XFRMA_REPLAY_ESN_VAL,
			      FUNC11(x->replay_esn),
			      x->replay_esn);
	} else {
		err = FUNC2(skb, XFRMA_REPLAY_VAL, sizeof(x->replay),
			      &x->replay);
	}
	if (err)
		goto out_cancel;
	err = FUNC3(skb, XFRMA_LTIME_VAL, sizeof(x->curlft), &x->curlft,
			    XFRMA_PAD);
	if (err)
		goto out_cancel;

	if (id->flags & XFRM_AE_RTHR) {
		err = FUNC4(skb, XFRMA_REPLAY_THRESH, x->replay_maxdiff);
		if (err)
			goto out_cancel;
	}
	if (id->flags & XFRM_AE_ETHR) {
		err = FUNC4(skb, XFRMA_ETIMER_THRESH,
				  x->replay_maxage * 10 / HZ);
		if (err)
			goto out_cancel;
	}
	err = FUNC10(skb, &x->mark);
	if (err)
		goto out_cancel;

	err = FUNC9(skb, x->if_id);
	if (err)
		goto out_cancel;

	FUNC7(skb, nlh);
	return 0;

out_cancel:
	FUNC5(skb, nlh);
	return err;
}