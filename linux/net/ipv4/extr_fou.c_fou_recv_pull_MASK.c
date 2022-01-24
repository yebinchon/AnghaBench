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
struct sk_buff {int dummy; } ;
struct fou {scalar_t__ family; } ;
struct TYPE_4__ {void* tot_len; } ;
struct TYPE_3__ {void* payload_len; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,size_t) ; 
 void* FUNC1 (scalar_t__) ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct fou *fou, size_t len)
{
	/* Remove 'len' bytes from the packet (UDP header and
	 * FOU header if present).
	 */
	if (fou->family == AF_INET)
		FUNC2(skb)->tot_len = FUNC1(FUNC5(FUNC2(skb)->tot_len) - len);
	else
		FUNC4(skb)->payload_len =
		    FUNC1(FUNC5(FUNC4(skb)->payload_len) - len);

	FUNC0(skb, len);
	FUNC6(skb, FUNC8(skb), len);
	FUNC7(skb);
	return FUNC3(skb);
}