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
struct batadv_orig_node {int /*<<< orphan*/  capabilities; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_ORIG_CAPA_HAS_DAT ; 
 int BATADV_TVLV_HANDLER_OGM_CIFNOTFND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct batadv_priv *bat_priv,
					   struct batadv_orig_node *orig,
					   u8 flags,
					   void *tvlv_value, u16 tvlv_value_len)
{
	if (flags & BATADV_TVLV_HANDLER_OGM_CIFNOTFND)
		FUNC0(BATADV_ORIG_CAPA_HAS_DAT, &orig->capabilities);
	else
		FUNC1(BATADV_ORIG_CAPA_HAS_DAT, &orig->capabilities);
}