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
struct mgmt_ev_cmd_status {void* opcode; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int,int,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_CHANNEL_MONITOR ; 
 int /*<<< orphan*/  HCI_SOCK_TRUSTED ; 
 int MGMT_EV_CMD_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 struct sk_buff* FUNC4 (void*,int /*<<< orphan*/ ,int,int,struct mgmt_ev_cmd_status*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 void* FUNC8 (struct sk_buff*,int) ; 
 int FUNC9 (struct sock*,struct sk_buff*) ; 

int FUNC10(struct sock *sk, u16 index, u16 cmd, u8 status)
{
	struct sk_buff *skb, *mskb;
	struct mgmt_hdr *hdr;
	struct mgmt_ev_cmd_status *ev;
	int err;

	FUNC0("sock %p, index %u, cmd %u, status %u", sk, index, cmd, status);

	skb = FUNC2(sizeof(*hdr) + sizeof(*ev), GFP_KERNEL);
	if (!skb)
		return -ENOMEM;

	hdr = FUNC8(skb, sizeof(*hdr));

	hdr->opcode = FUNC3(MGMT_EV_CMD_STATUS);
	hdr->index = FUNC3(index);
	hdr->len = FUNC3(sizeof(*ev));

	ev = FUNC8(skb, sizeof(*ev));
	ev->status = status;
	ev->opcode = FUNC3(cmd);

	mskb = FUNC4(hdr->index, FUNC6(sk),
					 MGMT_EV_CMD_STATUS, sizeof(*ev), ev);
	if (mskb)
		skb->tstamp = mskb->tstamp;
	else
		FUNC1(skb);

	err = FUNC9(sk, skb);
	if (err < 0)
		FUNC7(skb);

	if (mskb) {
		FUNC5(HCI_CHANNEL_MONITOR, mskb,
				    HCI_SOCK_TRUSTED, NULL);
		FUNC7(mskb);
	}

	return err;
}