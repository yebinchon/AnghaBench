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
typedef  scalar_t__ u16 ;
struct batadv_priv {int /*<<< orphan*/  distributed_arp_table; } ;
struct batadv_forw_packet {int /*<<< orphan*/  skb; } ;
struct batadv_dat_entry {int dummy; } ;
struct batadv_bcast_packet {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ ARPOP_REQUEST ; 
 int /*<<< orphan*/  BATADV_DBG_DAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct batadv_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct batadv_dat_entry* FUNC3 (struct batadv_priv*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_dat_entry*) ; 
 unsigned short FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct batadv_priv*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct batadv_forw_packet*) ; 

bool FUNC8(struct batadv_priv *bat_priv,
				      struct batadv_forw_packet *forw_packet)
{
	u16 type;
	__be32 ip_dst;
	struct batadv_dat_entry *dat_entry = NULL;
	bool ret = false;
	int hdr_size = sizeof(struct batadv_bcast_packet);
	unsigned short vid;

	if (!FUNC0(&bat_priv->distributed_arp_table))
		goto out;

	/* If this packet is an ARP_REQUEST and the node already has the
	 * information that it is going to ask, then the packet can be dropped
	 */
	if (FUNC7(forw_packet))
		goto out;

	vid = FUNC5(forw_packet->skb, &hdr_size);

	type = FUNC1(bat_priv, forw_packet->skb, hdr_size);
	if (type != ARPOP_REQUEST)
		goto out;

	ip_dst = FUNC2(forw_packet->skb, hdr_size);
	dat_entry = FUNC3(bat_priv, ip_dst, vid);
	/* check if the node already got this entry */
	if (!dat_entry) {
		FUNC6(BATADV_DBG_DAT, bat_priv,
			   "ARP Request for %pI4: fallback\n", &ip_dst);
		goto out;
	}

	FUNC6(BATADV_DBG_DAT, bat_priv,
		   "ARP Request for %pI4: fallback prevented\n", &ip_dst);
	ret = true;

out:
	if (dat_entry)
		FUNC4(dat_entry);
	return ret;
}