#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  tstamp; } ;
struct mgmt_hdr {void* index; void* len; void* opcode; } ;
struct mgmt_ev_cmd_complete {int /*<<< orphan*/  data; int /*<<< orphan*/  status; void* opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_CHANNEL_MONITOR ; 
 int /*<<< orphan*/  HCI_SOCK_TRUSTED ; 
 int MGMT_EV_CMD_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 struct sk_buff* FUNC4 (void*,int /*<<< orphan*/ ,int,int,struct mgmt_ev_cmd_complete*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,size_t) ; 
 void* FUNC9 (struct sk_buff*,int) ; 
 int FUNC10 (struct sock*,struct sk_buff*) ; 

int FUNC11(struct sock *sk, u16 index, u16 cmd, u8 status,
		      void *rp, size_t rp_len)
{
	struct sk_buff *skb, *mskb;
	struct mgmt_hdr *hdr;
	struct mgmt_ev_cmd_complete *ev;
	int err;

	FUNC0("sock %p", sk);

	skb = FUNC2(sizeof(*hdr) + sizeof(*ev) + rp_len, GFP_KERNEL);
	if (!skb)
		return -ENOMEM;

	hdr = FUNC9(skb, sizeof(*hdr));

	hdr->opcode = FUNC3(MGMT_EV_CMD_COMPLETE);
	hdr->index = FUNC3(index);
	hdr->len = FUNC3(sizeof(*ev) + rp_len);

	ev = FUNC9(skb, sizeof(*ev) + rp_len);
	ev->opcode = FUNC3(cmd);
	ev->status = status;

	if (rp)
		FUNC8(ev->data, rp, rp_len);

	mskb = FUNC4(hdr->index, FUNC6(sk),
					 MGMT_EV_CMD_COMPLETE,
					 sizeof(*ev) + rp_len, ev);
	if (mskb)
		skb->tstamp = mskb->tstamp;
	else
		FUNC1(skb);

	err = FUNC10(sk, skb);
	if (err < 0)
		FUNC7(skb);

	if (mskb) {
		FUNC5(HCI_CHANNEL_MONITOR, mskb,
				    HCI_SOCK_TRUSTED, NULL);
		FUNC7(mskb);
	}

	return err;
}