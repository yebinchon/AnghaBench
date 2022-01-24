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
struct ethhdr {int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;
struct batadv_priv {int dummy; } ;

/* Variables and functions */
 int EBADR ; 
 int ENODATA ; 
 int EREMOTE ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 struct ethhdr* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct batadv_priv *bat_priv,
				       struct sk_buff *skb, int hdr_size)
{
	struct ethhdr *ethhdr;

	/* drop packet if it has not necessary minimum size */
	if (FUNC5(!FUNC4(skb, hdr_size)))
		return -ENODATA;

	ethhdr = FUNC1(skb);

	/* packet with unicast indication but non-unicast recipient */
	if (!FUNC3(ethhdr->h_dest))
		return -EBADR;

	/* packet with broadcast/multicast sender address */
	if (FUNC2(ethhdr->h_source))
		return -EBADR;

	/* not for me */
	if (!FUNC0(bat_priv, ethhdr->h_dest))
		return -EREMOTE;

	return 0;
}