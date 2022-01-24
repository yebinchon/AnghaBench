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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ data; int /*<<< orphan*/  dev; } ;
struct ethhdr {scalar_t__ h_proto; } ;
struct batadv_priv {int dummy; } ;
struct arphdr {scalar_t__ ar_hrd; scalar_t__ ar_pro; scalar_t__ ar_hln; int ar_pln; scalar_t__ ar_op; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  ARPOP_REQUEST ; 
 scalar_t__ ETH_ALEN ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_ARP ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static u16 FUNC15(struct batadv_priv *bat_priv,
			       struct sk_buff *skb, int hdr_size)
{
	struct arphdr *arphdr;
	struct ethhdr *ethhdr;
	__be32 ip_src, ip_dst;
	u8 *hw_src, *hw_dst;
	u16 type = 0;

	/* pull the ethernet header */
	if (FUNC14(!FUNC13(skb, hdr_size + ETH_HLEN)))
		goto out;

	ethhdr = (struct ethhdr *)(skb->data + hdr_size);

	if (ethhdr->h_proto != FUNC5(ETH_P_ARP))
		goto out;

	/* pull the ARP payload */
	if (FUNC14(!FUNC13(skb, hdr_size + ETH_HLEN +
				    FUNC0(skb->dev))))
		goto out;

	arphdr = (struct arphdr *)(skb->data + hdr_size + ETH_HLEN);

	/* check whether the ARP packet carries a valid IP information */
	if (arphdr->ar_hrd != FUNC5(ARPHRD_ETHER))
		goto out;

	if (arphdr->ar_pro != FUNC5(ETH_P_IP))
		goto out;

	if (arphdr->ar_hln != ETH_ALEN)
		goto out;

	if (arphdr->ar_pln != 4)
		goto out;

	/* Check for bad reply/request. If the ARP message is not sane, DAT
	 * will simply ignore it
	 */
	ip_src = FUNC4(skb, hdr_size);
	ip_dst = FUNC3(skb, hdr_size);
	if (FUNC7(ip_src) || FUNC8(ip_src) ||
	    FUNC7(ip_dst) || FUNC8(ip_dst) ||
	    FUNC9(ip_src) || FUNC6(ip_src) ||
	    FUNC9(ip_dst) || FUNC6(ip_dst))
		goto out;

	hw_src = FUNC2(skb, hdr_size);
	if (FUNC11(hw_src) || FUNC10(hw_src))
		goto out;

	/* don't care about the destination MAC address in ARP requests */
	if (arphdr->ar_op != FUNC5(ARPOP_REQUEST)) {
		hw_dst = FUNC1(skb, hdr_size);
		if (FUNC11(hw_dst) ||
		    FUNC10(hw_dst))
			goto out;
	}

	type = FUNC12(arphdr->ar_op);
out:
	return type;
}