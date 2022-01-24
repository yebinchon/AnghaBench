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
typedef  int /*<<< orphan*/  u16 ;
struct vlan_head {int tci; int /*<<< orphan*/  tpid; } ;
struct sk_buff {int data; int len; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  VLAN_CFI_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct vlan_head *key_vh,
			  bool untag_vlan)
{
	struct vlan_head *vh = (struct vlan_head *)skb->data;

	if (FUNC6(!FUNC4(vh->tpid)))
		return 0;

	if (FUNC9(skb->len < sizeof(struct vlan_head) + sizeof(__be16)))
		return 0;

	if (FUNC9(!FUNC7(skb, sizeof(struct vlan_head) +
				 sizeof(__be16))))
		return -ENOMEM;

	vh = (struct vlan_head *)skb->data;
	key_vh->tci = vh->tci | FUNC5(VLAN_CFI_MASK);
	key_vh->tpid = vh->tpid;

	if (FUNC9(untag_vlan)) {
		int offset = skb->data - FUNC8(skb);
		u16 tci;
		int err;

		FUNC1(skb, offset);
		err = FUNC2(skb, &tci);
		FUNC0(skb, offset);
		if (err)
			return err;
		FUNC3(skb, key_vh->tpid, tci);
	} else {
		FUNC0(skb, sizeof(struct vlan_head));
	}
	return 1;
}