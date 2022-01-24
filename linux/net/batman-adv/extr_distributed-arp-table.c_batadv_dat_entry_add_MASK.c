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
struct TYPE_2__ {int /*<<< orphan*/  hash; } ;
struct batadv_priv {TYPE_1__ dat; } ;
struct batadv_dat_entry {unsigned short vid; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  ip; int /*<<< orphan*/  hash_entry; int /*<<< orphan*/  refcount; void* last_update; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_DAT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  batadv_compare_dat ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct batadv_dat_entry* FUNC1 (struct batadv_priv*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_dat_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct batadv_priv*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct batadv_dat_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  batadv_hash_dat ; 
 int /*<<< orphan*/  FUNC5 (unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* jiffies ; 
 struct batadv_dat_entry* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct batadv_priv *bat_priv, __be32 ip,
				 u8 *mac_addr, unsigned short vid)
{
	struct batadv_dat_entry *dat_entry;
	int hash_added;

	dat_entry = FUNC1(bat_priv, ip, vid);
	/* if this entry is already known, just update it */
	if (dat_entry) {
		if (!FUNC0(dat_entry->mac_addr, mac_addr))
			FUNC6(dat_entry->mac_addr, mac_addr);
		dat_entry->last_update = jiffies;
		FUNC3(BATADV_DBG_DAT, bat_priv,
			   "Entry updated: %pI4 %pM (vid: %d)\n",
			   &dat_entry->ip, dat_entry->mac_addr,
			   FUNC5(vid));
		goto out;
	}

	dat_entry = FUNC7(sizeof(*dat_entry), GFP_ATOMIC);
	if (!dat_entry)
		goto out;

	dat_entry->ip = ip;
	dat_entry->vid = vid;
	FUNC6(dat_entry->mac_addr, mac_addr);
	dat_entry->last_update = jiffies;
	FUNC9(&dat_entry->refcount);

	FUNC8(&dat_entry->refcount);
	hash_added = FUNC4(bat_priv->dat.hash, batadv_compare_dat,
				     batadv_hash_dat, dat_entry,
				     &dat_entry->hash_entry);

	if (FUNC10(hash_added != 0)) {
		/* remove the reference for the hash */
		FUNC2(dat_entry);
		goto out;
	}

	FUNC3(BATADV_DBG_DAT, bat_priv, "New entry added: %pI4 %pM (vid: %d)\n",
		   &dat_entry->ip, dat_entry->mac_addr, FUNC5(vid));

out:
	if (dat_entry)
		FUNC2(dat_entry);
}