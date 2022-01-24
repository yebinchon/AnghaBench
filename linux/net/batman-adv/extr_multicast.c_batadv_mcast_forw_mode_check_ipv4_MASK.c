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
struct iphdr {int /*<<< orphan*/  daddr; } ;
struct ethhdr {int dummy; } ;
struct batadv_priv {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ETH_P_IP ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC4(struct batadv_priv *bat_priv,
					     struct sk_buff *skb,
					     bool *is_unsnoopable,
					     int *is_routable)
{
	struct iphdr *iphdr;

	/* We might fail due to out-of-memory -> drop it */
	if (!FUNC3(skb, sizeof(struct ethhdr) + sizeof(*iphdr)))
		return -ENOMEM;

	if (FUNC0(skb))
		return -EINVAL;

	iphdr = FUNC1(skb);

	/* link-local multicast listeners behind a bridge are
	 * not snoopable (see RFC4541, section 2.1.2.2)
	 */
	if (FUNC2(iphdr->daddr))
		*is_unsnoopable = true;
	else
		*is_routable = ETH_P_IP;

	return 0;
}