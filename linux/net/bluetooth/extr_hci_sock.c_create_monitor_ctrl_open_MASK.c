#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ver ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct hci_mon_hdr {void* len; void* index; void* opcode; } ;
struct TYPE_4__ {int cookie; int channel; TYPE_1__* hdev; int /*<<< orphan*/ * comm; } ;
struct TYPE_3__ {scalar_t__ id; } ;

/* Variables and functions */
 int BT_SUBSYS_REVISION ; 
 int /*<<< orphan*/  BT_SUBSYS_VERSION ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  HCI_CHANNEL_CONTROL 130 
#define  HCI_CHANNEL_RAW 129 
#define  HCI_CHANNEL_USER 128 
 scalar_t__ HCI_DEV_NONE ; 
 scalar_t__ HCI_MON_CTRL_OPEN ; 
 scalar_t__ HCI_MON_HDR_SIZE ; 
 int /*<<< orphan*/  HCI_SOCK_TRUSTED ; 
 int TASK_COMM_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__) ; 
 TYPE_2__* FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 struct hci_mon_hdr* FUNC8 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC12(struct sock *sk)
{
	struct hci_mon_hdr *hdr;
	struct sk_buff *skb;
	u16 format;
	u8 ver[3];
	u32 flags;

	/* No message needed when cookie is not present */
	if (!FUNC3(sk)->cookie)
		return NULL;

	switch (FUNC3(sk)->channel) {
	case HCI_CHANNEL_RAW:
		format = 0x0000;
		ver[0] = BT_SUBSYS_VERSION;
		FUNC6(BT_SUBSYS_REVISION, ver + 1);
		break;
	case HCI_CHANNEL_USER:
		format = 0x0001;
		ver[0] = BT_SUBSYS_VERSION;
		FUNC6(BT_SUBSYS_REVISION, ver + 1);
		break;
	case HCI_CHANNEL_CONTROL:
		format = 0x0002;
		FUNC5(ver);
		break;
	default:
		/* No message for unsupported format */
		return NULL;
	}

	skb = FUNC1(14 + TASK_COMM_LEN , GFP_ATOMIC);
	if (!skb)
		return NULL;

	flags = FUNC4(sk, HCI_SOCK_TRUSTED) ? 0x1 : 0x0;

	FUNC7(FUNC3(sk)->cookie, FUNC9(skb, 4));
	FUNC6(format, FUNC9(skb, 2));
	FUNC10(skb, ver, sizeof(ver));
	FUNC7(flags, FUNC9(skb, 4));
	FUNC11(skb, TASK_COMM_LEN);
	FUNC10(skb, FUNC3(sk)->comm, TASK_COMM_LEN);

	FUNC0(skb);

	hdr = FUNC8(skb, HCI_MON_HDR_SIZE);
	hdr->opcode = FUNC2(HCI_MON_CTRL_OPEN);
	if (FUNC3(sk)->hdev)
		hdr->index = FUNC2(FUNC3(sk)->hdev->id);
	else
		hdr->index = FUNC2(HCI_DEV_NONE);
	hdr->len = FUNC2(skb->len - HCI_MON_HDR_SIZE);

	return skb;
}