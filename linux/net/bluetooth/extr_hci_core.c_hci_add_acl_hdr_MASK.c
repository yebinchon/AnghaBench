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
struct sk_buff {int len; } ;
struct hci_acl_hdr {void* dlen; void* handle; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_ACL_HDR_SIZE ; 
 void* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct sk_buff *skb, __u16 handle, __u16 flags)
{
	struct hci_acl_hdr *hdr;
	int len = skb->len;

	FUNC2(skb, HCI_ACL_HDR_SIZE);
	FUNC3(skb);
	hdr = (struct hci_acl_hdr *)FUNC4(skb);
	hdr->handle = FUNC0(FUNC1(handle, flags));
	hdr->dlen   = FUNC0(len);
}