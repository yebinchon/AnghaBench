#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int len; int /*<<< orphan*/  sk; int /*<<< orphan*/ * data; } ;
struct nlmsghdr {int nlmsg_len; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlmsgerr {int error; int /*<<< orphan*/  msg; } ;
struct netlink_sock {int flags; } ;
struct netlink_ext_ack {int cookie_len; int /*<<< orphan*/  cookie; scalar_t__ bad_attr; scalar_t__ _msg; } ;
struct TYPE_5__ {int /*<<< orphan*/  portid; TYPE_1__* sk; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* sk_error_report ) (TYPE_1__*) ;int /*<<< orphan*/  sk_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_3__ FUNC0 (struct sk_buff*) ; 
 int NETLINK_F_CAP_ACK ; 
 int NETLINK_F_EXT_ACK ; 
 int /*<<< orphan*/  NLMSGERR_ATTR_COOKIE ; 
 int /*<<< orphan*/  NLMSGERR_ATTR_MSG ; 
 int /*<<< orphan*/  NLMSGERR_ATTR_OFFS ; 
 int /*<<< orphan*/  NLMSG_ERROR ; 
 unsigned int NLM_F_ACK_TLVS ; 
 unsigned int NLM_F_CAPPED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct nlmsghdr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct nlmsghdr*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int) ; 
 struct netlink_sock* FUNC9 (TYPE_1__*) ; 
 struct nlmsgerr* FUNC10 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct nlmsghdr*) ; 
 scalar_t__ FUNC12 (struct nlmsghdr*) ; 
 struct sk_buff* FUNC13 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

void FUNC16(struct sk_buff *in_skb, struct nlmsghdr *nlh, int err,
		 const struct netlink_ext_ack *extack)
{
	struct sk_buff *skb;
	struct nlmsghdr *rep;
	struct nlmsgerr *errmsg;
	size_t payload = sizeof(*errmsg);
	size_t tlvlen = 0;
	struct netlink_sock *nlk = FUNC9(FUNC0(in_skb).sk);
	unsigned int flags = 0;
	bool nlk_has_extack = nlk->flags & NETLINK_F_EXT_ACK;

	/* Error messages get the original request appened, unless the user
	 * requests to cap the error message, and get extra error data if
	 * requested.
	 */
	if (nlk_has_extack && extack && extack->_msg)
		tlvlen += FUNC8(FUNC14(extack->_msg) + 1);

	if (err) {
		if (!(nlk->flags & NETLINK_F_CAP_ACK))
			payload += FUNC12(nlh);
		else
			flags |= NLM_F_CAPPED;
		if (nlk_has_extack && extack && extack->bad_attr)
			tlvlen += FUNC8(sizeof(u32));
	} else {
		flags |= NLM_F_CAPPED;

		if (nlk_has_extack && extack && extack->cookie_len)
			tlvlen += FUNC8(extack->cookie_len);
	}

	if (tlvlen)
		flags |= NLM_F_ACK_TLVS;

	skb = FUNC13(payload + tlvlen, GFP_KERNEL);
	if (!skb) {
		FUNC0(in_skb).sk->sk_err = ENOBUFS;
		FUNC0(in_skb).sk->sk_error_report(FUNC0(in_skb).sk);
		return;
	}

	rep = FUNC2(skb, FUNC0(in_skb).portid, nlh->nlmsg_seq,
			  NLMSG_ERROR, payload, flags);
	errmsg = FUNC10(rep);
	errmsg->error = err;
	FUNC3(&errmsg->msg, nlh, payload > sizeof(*errmsg) ? nlh->nlmsg_len : sizeof(*nlh));

	if (nlk_has_extack && extack) {
		if (extack->_msg) {
			FUNC1(FUNC6(skb, NLMSGERR_ATTR_MSG,
					       extack->_msg));
		}
		if (err) {
			if (extack->bad_attr &&
			    !FUNC1((u8 *)extack->bad_attr < in_skb->data ||
				     (u8 *)extack->bad_attr >= in_skb->data +
							       in_skb->len))
				FUNC1(FUNC7(skb, NLMSGERR_ATTR_OFFS,
						    (u8 *)extack->bad_attr -
						    in_skb->data));
		} else {
			if (extack->cookie_len)
				FUNC1(FUNC5(skb, NLMSGERR_ATTR_COOKIE,
						extack->cookie_len,
						extack->cookie));
		}
	}

	FUNC11(skb, rep);

	FUNC4(in_skb->sk, skb, FUNC0(in_skb).portid, MSG_DONTWAIT);
}