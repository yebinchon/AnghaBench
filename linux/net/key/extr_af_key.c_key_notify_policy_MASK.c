#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xfrm_policy {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct sadb_msg {int /*<<< orphan*/  sadb_msg_pid; int /*<<< orphan*/  sadb_msg_seq; scalar_t__ sadb_msg_errno; int /*<<< orphan*/  sadb_msg_type; int /*<<< orphan*/  sadb_msg_version; } ;
struct TYPE_2__ {scalar_t__ byid; } ;
struct km_event {scalar_t__ event; int /*<<< orphan*/  portid; int /*<<< orphan*/  seq; TYPE_1__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROADCAST_ALL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  PF_KEY_V2 ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  SADB_X_SPDDELETE2 ; 
 scalar_t__ XFRM_MSG_DELPOLICY ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,struct xfrm_policy*,int) ; 
 struct sk_buff* FUNC6 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfrm_policy*) ; 

__attribute__((used)) static int FUNC8(struct xfrm_policy *xp, int dir, const struct km_event *c)
{
	struct sk_buff *out_skb;
	struct sadb_msg *out_hdr;
	int err;

	out_skb = FUNC6(xp);
	if (FUNC0(out_skb))
		return FUNC1(out_skb);

	err = FUNC5(out_skb, xp, dir);
	if (err < 0) {
		FUNC3(out_skb);
		return err;
	}

	out_hdr = (struct sadb_msg *) out_skb->data;
	out_hdr->sadb_msg_version = PF_KEY_V2;

	if (c->data.byid && c->event == XFRM_MSG_DELPOLICY)
		out_hdr->sadb_msg_type = SADB_X_SPDDELETE2;
	else
		out_hdr->sadb_msg_type = FUNC2(c->event);
	out_hdr->sadb_msg_errno = 0;
	out_hdr->sadb_msg_seq = c->seq;
	out_hdr->sadb_msg_pid = c->portid;
	FUNC4(out_skb, GFP_ATOMIC, BROADCAST_ALL, NULL, FUNC7(xp));
	return 0;

}