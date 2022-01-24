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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int mcast_flags; int /*<<< orphan*/  mcast_handler_lock; int /*<<< orphan*/  capa_initialized; int /*<<< orphan*/  capabilities; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_ORIG_CAPA_HAS_MCAST ; 
 int BATADV_TVLV_HANDLER_OGM_CIFNOTFND ; 
 int FUNC0 (int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_priv*,struct batadv_orig_node*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,struct batadv_orig_node*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_priv*,struct batadv_orig_node*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_priv*,struct batadv_orig_node*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct batadv_priv*,struct batadv_orig_node*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct batadv_priv *bat_priv,
					  struct batadv_orig_node *orig,
					  u8 flags,
					  void *tvlv_value,
					  u16 tvlv_value_len)
{
	bool orig_mcast_enabled = !(flags & BATADV_TVLV_HANDLER_OGM_CIFNOTFND);
	u8 mcast_flags;

	mcast_flags = FUNC0(orig_mcast_enabled,
						  tvlv_value, tvlv_value_len);

	FUNC8(&orig->mcast_handler_lock);

	if (orig_mcast_enabled &&
	    !FUNC10(BATADV_ORIG_CAPA_HAS_MCAST, &orig->capabilities)) {
		FUNC7(BATADV_ORIG_CAPA_HAS_MCAST, &orig->capabilities);
	} else if (!orig_mcast_enabled &&
		   FUNC10(BATADV_ORIG_CAPA_HAS_MCAST, &orig->capabilities)) {
		FUNC6(BATADV_ORIG_CAPA_HAS_MCAST, &orig->capabilities);
	}

	FUNC7(BATADV_ORIG_CAPA_HAS_MCAST, &orig->capa_initialized);

	FUNC5(bat_priv, orig, mcast_flags);
	FUNC1(bat_priv, orig, mcast_flags);
	FUNC2(bat_priv, orig, mcast_flags);
	FUNC3(bat_priv, orig, mcast_flags);
	FUNC4(bat_priv, orig, mcast_flags);

	orig->mcast_flags = mcast_flags;
	FUNC9(&orig->mcast_handler_lock);
}