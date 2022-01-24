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
struct TYPE_2__ {int flags; } ;
struct batadv_tt_global_entry {TYPE_1__ common; } ;
struct batadv_priv {int dummy; } ;

/* Variables and functions */
 int BATADV_TT_CLIENT_ISOLA ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_tt_global_entry*) ; 
 struct batadv_tt_global_entry* FUNC1 (struct batadv_priv*,int /*<<< orphan*/  const*,unsigned short) ; 

bool FUNC2(struct batadv_priv *bat_priv,
				  const u8 *addr, unsigned short vid)
{
	struct batadv_tt_global_entry *tt;
	bool ret;

	tt = FUNC1(bat_priv, addr, vid);
	if (!tt)
		return false;

	ret = tt->common.flags & BATADV_TT_CLIENT_ISOLA;

	FUNC0(tt);

	return ret;
}