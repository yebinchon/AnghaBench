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
typedef  int u32 ;
struct sk_buff {int len; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; int version; int /*<<< orphan*/  tot_len; } ;
struct inet_skb_parm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPSTATS_MIB_CSUMERRORS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INDISCARDS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INHDRERRORS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INTRUNCATEDPKTS ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net *net, struct sk_buff *skb)
{
	const struct iphdr *iph;
	u32 len;

	if (!FUNC6(skb, sizeof(struct iphdr)))
		goto inhdr_error;

	iph = FUNC3(skb);

	/* Basic sanity checks */
	if (iph->ihl < 5 || iph->version != 4)
		goto inhdr_error;

	if (!FUNC6(skb, iph->ihl*4))
		goto inhdr_error;

	iph = FUNC3(skb);
	if (FUNC8(FUNC2((u8 *)iph, iph->ihl)))
		goto csum_error;

	len = FUNC5(iph->tot_len);
	if (skb->len < len) {
		FUNC1(net, IPSTATS_MIB_INTRUNCATEDPKTS);
		goto drop;
	} else if (len < (iph->ihl*4))
		goto inhdr_error;

	if (FUNC7(skb, len)) {
		FUNC1(net, IPSTATS_MIB_INDISCARDS);
		goto drop;
	}

	FUNC4(FUNC0(skb), 0, sizeof(struct inet_skb_parm));
	/* We should really parse IP options here but until
	 * somebody who actually uses IP options complains to
	 * us we'll just silently ignore the options because
	 * we're lazy!
	 */
	return 0;

csum_error:
	FUNC1(net, IPSTATS_MIB_CSUMERRORS);
inhdr_error:
	FUNC1(net, IPSTATS_MIB_INHDRERRORS);
drop:
	return -1;
}