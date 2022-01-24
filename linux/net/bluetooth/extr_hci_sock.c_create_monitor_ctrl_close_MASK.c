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
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct hci_mon_hdr {void* len; void* index; void* opcode; } ;
struct TYPE_4__ {int channel; TYPE_1__* hdev; int /*<<< orphan*/  cookie; } ;
struct TYPE_3__ {scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  HCI_CHANNEL_CONTROL 130 
#define  HCI_CHANNEL_RAW 129 
#define  HCI_CHANNEL_USER 128 
 scalar_t__ HCI_DEV_NONE ; 
 scalar_t__ HCI_MON_CTRL_CLOSE ; 
 scalar_t__ HCI_MON_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__) ; 
 TYPE_2__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hci_mon_hdr* FUNC5 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC7(struct sock *sk)
{
	struct hci_mon_hdr *hdr;
	struct sk_buff *skb;

	/* No message needed when cookie is not present */
	if (!FUNC3(sk)->cookie)
		return NULL;

	switch (FUNC3(sk)->channel) {
	case HCI_CHANNEL_RAW:
	case HCI_CHANNEL_USER:
	case HCI_CHANNEL_CONTROL:
		break;
	default:
		/* No message for unsupported format */
		return NULL;
	}

	skb = FUNC1(4, GFP_ATOMIC);
	if (!skb)
		return NULL;

	FUNC4(FUNC3(sk)->cookie, FUNC6(skb, 4));

	FUNC0(skb);

	hdr = FUNC5(skb, HCI_MON_HDR_SIZE);
	hdr->opcode = FUNC2(HCI_MON_CTRL_CLOSE);
	if (FUNC3(sk)->hdev)
		hdr->index = FUNC2(FUNC3(sk)->hdev->id);
	else
		hdr->index = FUNC2(HCI_DEV_NONE);
	hdr->len = FUNC2(skb->len - HCI_MON_HDR_SIZE);

	return skb;
}