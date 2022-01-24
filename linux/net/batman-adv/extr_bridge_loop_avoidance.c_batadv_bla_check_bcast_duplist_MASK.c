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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int bcast_duplist_curr; int /*<<< orphan*/  bcast_duplist_lock; struct batadv_bcast_duplist_entry* bcast_duplist; } ;
struct batadv_priv {TYPE_1__ bla; } ;
struct batadv_bcast_packet {int /*<<< orphan*/  orig; } ;
struct batadv_bcast_duplist_entry {scalar_t__ crc; int /*<<< orphan*/  orig; int /*<<< orphan*/  entrytime; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int BATADV_DUPLIST_SIZE ; 
 int /*<<< orphan*/  BATADV_DUPLIST_TIMEOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

bool FUNC6(struct batadv_priv *bat_priv,
				    struct sk_buff *skb)
{
	int i, curr;
	__be32 crc;
	struct batadv_bcast_packet *bcast_packet;
	struct batadv_bcast_duplist_entry *entry;
	bool ret = false;

	bcast_packet = (struct batadv_bcast_packet *)skb->data;

	/* calculate the crc ... */
	crc = FUNC2(skb, (u8 *)(bcast_packet + 1));

	FUNC4(&bat_priv->bla.bcast_duplist_lock);

	for (i = 0; i < BATADV_DUPLIST_SIZE; i++) {
		curr = (bat_priv->bla.bcast_duplist_curr + i);
		curr %= BATADV_DUPLIST_SIZE;
		entry = &bat_priv->bla.bcast_duplist[curr];

		/* we can stop searching if the entry is too old ;
		 * later entries will be even older
		 */
		if (FUNC1(entry->entrytime,
					 BATADV_DUPLIST_TIMEOUT))
			break;

		if (entry->crc != crc)
			continue;

		if (FUNC0(entry->orig, bcast_packet->orig))
			continue;

		/* this entry seems to match: same crc, not too old,
		 * and from another gw. therefore return true to forbid it.
		 */
		ret = true;
		goto out;
	}
	/* not found, add a new entry (overwrite the oldest entry)
	 * and allow it, its the first occurrence.
	 */
	curr = (bat_priv->bla.bcast_duplist_curr + BATADV_DUPLIST_SIZE - 1);
	curr %= BATADV_DUPLIST_SIZE;
	entry = &bat_priv->bla.bcast_duplist[curr];
	entry->crc = crc;
	entry->entrytime = jiffies;
	FUNC3(entry->orig, bcast_packet->orig);
	bat_priv->bla.bcast_duplist_curr = curr;

out:
	FUNC5(&bat_priv->bla.bcast_duplist_lock);

	return ret;
}