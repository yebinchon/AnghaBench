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
struct sk_buff {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; } ;
struct ethhdr {int dummy; } ;
struct batadv_priv {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ETH_P_IPV6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ IPV6_ADDR_SCOPE_LINKLOCAL ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct ipv6hdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC5(struct batadv_priv *bat_priv,
					     struct sk_buff *skb,
					     bool *is_unsnoopable,
					     int *is_routable)
{
	struct ipv6hdr *ip6hdr;

	/* We might fail due to out-of-memory -> drop it */
	if (!FUNC4(skb, sizeof(struct ethhdr) + sizeof(*ip6hdr)))
		return -ENOMEM;

	if (FUNC1(skb))
		return -EINVAL;

	ip6hdr = FUNC3(skb);

	if (FUNC0(&ip6hdr->daddr) < IPV6_ADDR_SCOPE_LINKLOCAL)
		return -EINVAL;

	/* link-local-all-nodes multicast listeners behind a bridge are
	 * not snoopable (see RFC4541, section 3, paragraph 3)
	 */
	if (FUNC2(&ip6hdr->daddr))
		*is_unsnoopable = true;
	else if (FUNC0(&ip6hdr->daddr) > IPV6_ADDR_SCOPE_LINKLOCAL)
		*is_routable = ETH_P_IPV6;

	return 0;
}