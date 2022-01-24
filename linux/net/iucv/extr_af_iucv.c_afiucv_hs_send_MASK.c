#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sock {scalar_t__ sk_type; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  protocol; TYPE_1__* dev; } ;
struct iucv_sock {int msglimit; int /*<<< orphan*/  msg_recv; int /*<<< orphan*/  send_skb_q; TYPE_1__* hs_dev; struct iucv_message* src_name; struct iucv_message* src_user_id; struct iucv_message* dst_name; struct iucv_message* dst_user_id; } ;
struct iucv_message {int dummy; } ;
struct af_iucv_trans_hdr {int version; scalar_t__ flags; int window; int /*<<< orphan*/  iucv_hdr; int /*<<< orphan*/ * srcAppName; int /*<<< orphan*/ * srcUserID; int /*<<< orphan*/ * destAppName; int /*<<< orphan*/ * destUserID; int /*<<< orphan*/  magic; } ;
struct TYPE_3__ {int flags; scalar_t__ mtu; } ;

/* Variables and functions */
 scalar_t__ AF_IUCV_FLAG_SYN ; 
 scalar_t__ AF_IUCV_FLAG_WIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int EMSGSIZE ; 
 int ENETDOWN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_P_AF_IUCV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IFF_UP ; 
 scalar_t__ SOCK_SEQPACKET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC7 (struct sk_buff*) ; 
 struct iucv_sock* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct iucv_message*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct af_iucv_trans_hdr*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 struct sk_buff* FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct af_iucv_trans_hdr* FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct iucv_message *imsg, struct sock *sock,
		   struct sk_buff *skb, u8 flags)
{
	struct iucv_sock *iucv = FUNC8(sock);
	struct af_iucv_trans_hdr *phs_hdr;
	struct sk_buff *nskb;
	int err, confirm_recv = 0;

	phs_hdr = FUNC15(skb, sizeof(*phs_hdr));
	FUNC11(phs_hdr, 0, sizeof(*phs_hdr));
	FUNC17(skb);

	phs_hdr->magic = ETH_P_AF_IUCV;
	phs_hdr->version = 1;
	phs_hdr->flags = flags;
	if (flags == AF_IUCV_FLAG_SYN)
		phs_hdr->window = iucv->msglimit;
	else if ((flags == AF_IUCV_FLAG_WIN) || !flags) {
		confirm_recv = FUNC3(&iucv->msg_recv);
		phs_hdr->window = confirm_recv;
		if (confirm_recv)
			phs_hdr->flags = phs_hdr->flags | AF_IUCV_FLAG_WIN;
	}
	FUNC10(phs_hdr->destUserID, iucv->dst_user_id, 8);
	FUNC10(phs_hdr->destAppName, iucv->dst_name, 8);
	FUNC10(phs_hdr->srcUserID, iucv->src_user_id, 8);
	FUNC10(phs_hdr->srcAppName, iucv->src_name, 8);
	FUNC0(phs_hdr->destUserID, sizeof(phs_hdr->destUserID));
	FUNC0(phs_hdr->destAppName, sizeof(phs_hdr->destAppName));
	FUNC0(phs_hdr->srcUserID, sizeof(phs_hdr->srcUserID));
	FUNC0(phs_hdr->srcAppName, sizeof(phs_hdr->srcAppName));
	if (imsg)
		FUNC10(&phs_hdr->iucv_hdr, imsg, sizeof(struct iucv_message));

	skb->dev = iucv->hs_dev;
	if (!skb->dev) {
		err = -ENODEV;
		goto err_free;
	}

	FUNC6(skb, skb->dev, ETH_P_AF_IUCV, NULL, NULL, skb->len);

	if (!(skb->dev->flags & IFF_UP) || !FUNC13(skb->dev)) {
		err = -ENETDOWN;
		goto err_free;
	}
	if (skb->len > skb->dev->mtu) {
		if (sock->sk_type == SOCK_SEQPACKET) {
			err = -EMSGSIZE;
			goto err_free;
		}
		FUNC18(skb, skb->dev->mtu);
	}
	skb->protocol = FUNC5(ETH_P_AF_IUCV);

	FUNC2(skb);
	nskb = FUNC14(skb, GFP_ATOMIC);
	if (!nskb) {
		err = -ENOMEM;
		goto err_free;
	}

	FUNC16(&iucv->send_skb_q, nskb);
	err = FUNC7(skb);
	if (FUNC12(err)) {
		FUNC19(nskb, &iucv->send_skb_q);
		FUNC9(nskb);
	} else {
		FUNC4(confirm_recv, &iucv->msg_recv);
		FUNC1(FUNC3(&iucv->msg_recv) < 0);
	}
	return FUNC12(err);

err_free:
	FUNC9(skb);
	return err;
}