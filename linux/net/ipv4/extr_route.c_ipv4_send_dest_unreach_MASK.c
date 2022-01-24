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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct iphdr {int dummy; } ;
struct ip_options {int optlen; } ;
typedef  int /*<<< orphan*/  opt ;
struct TYPE_2__ {int version; int ihl; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMP_HOST_UNREACH ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ip_options*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ip_options*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_options*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct sk_buff *skb)
{
	struct ip_options opt;
	int res;

	/* Recompile ip options since IPCB may not be valid anymore.
	 * Also check we have a reasonable ipv4 header.
	 */
	if (!FUNC5(skb, sizeof(struct iphdr)) ||
	    FUNC3(skb)->version != 4 || FUNC3(skb)->ihl < 5)
		return;

	FUNC4(&opt, 0, sizeof(opt));
	if (FUNC3(skb)->ihl > 5) {
		if (!FUNC5(skb, FUNC3(skb)->ihl * 4))
			return;
		opt.optlen = FUNC3(skb)->ihl * 4 - sizeof(struct iphdr);

		FUNC6();
		res = FUNC1(FUNC2(skb->dev), &opt, skb, NULL);
		FUNC7();

		if (res)
			return;
	}
	FUNC0(skb, ICMP_DEST_UNREACH, ICMP_HOST_UNREACH, 0, &opt);
}