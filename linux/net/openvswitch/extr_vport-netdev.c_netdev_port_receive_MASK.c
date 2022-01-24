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
struct vport {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  data; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct vport* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct vport*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct sk_buff *skb)
{
	struct vport *vport;

	vport = FUNC1(skb->dev);
	if (FUNC8(!vport))
		goto error;

	if (FUNC8(FUNC7(skb)))
		goto error;

	/* Make our own copy of the packet.  Otherwise we will mangle the
	 * packet for anyone who came before us (e.g. tcpdump via AF_PACKET).
	 */
	skb = FUNC5(skb, GFP_ATOMIC);
	if (FUNC8(!skb))
		return;

	if (skb->dev->type == ARPHRD_ETHER) {
		FUNC4(skb, ETH_HLEN);
		FUNC3(skb, skb->data, ETH_HLEN);
	}
	FUNC2(vport, skb, FUNC6(skb));
	return;
error:
	FUNC0(skb);
}