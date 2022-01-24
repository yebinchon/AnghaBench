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
struct batadv_tt_global_entry {int /*<<< orphan*/  orig_list_count; } ;
struct batadv_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_tt_global_entry*) ; 
 struct batadv_tt_global_entry* FUNC2 (struct batadv_priv*,int /*<<< orphan*/  const*,unsigned short) ; 

int FUNC3(struct batadv_priv *bat_priv,
				const u8 *addr, unsigned short vid)
{
	struct batadv_tt_global_entry *tt_global_entry;
	int count;

	tt_global_entry = FUNC2(bat_priv, addr, vid);
	if (!tt_global_entry)
		return 0;

	count = FUNC0(&tt_global_entry->orig_list_count);
	FUNC1(tt_global_entry);

	return count;
}