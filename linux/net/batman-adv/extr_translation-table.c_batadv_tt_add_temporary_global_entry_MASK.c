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
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int /*<<< orphan*/  orig; int /*<<< orphan*/  last_ttvn; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_TT ; 
 int /*<<< orphan*/  BATADV_TT_CLIENT_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct batadv_priv*,char*,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_priv*,struct batadv_orig_node*,unsigned char const*,unsigned short,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC5(struct batadv_priv *bat_priv,
					  struct batadv_orig_node *orig_node,
					  const unsigned char *addr,
					  unsigned short vid)
{
	/* ignore loop detect macs, they are not supposed to be in the tt local
	 * data as well.
	 */
	if (FUNC1(addr))
		return false;

	if (!FUNC4(bat_priv, orig_node, addr, vid,
				  BATADV_TT_CLIENT_TEMP,
				  FUNC0(&orig_node->last_ttvn)))
		return false;

	FUNC2(BATADV_DBG_TT, bat_priv,
		   "Added temporary global client (addr: %pM, vid: %d, orig: %pM)\n",
		   addr, FUNC3(vid), orig_node->orig);

	return true;
}