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
struct batadv_hard_iface {scalar_t__ if_status; int /*<<< orphan*/  hardif_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  BATADV_IF_CLEANUP_KEEP ; 
 scalar_t__ BATADV_IF_NOT_IN_USE ; 
 scalar_t__ BATADV_IF_TO_BE_REMOVED ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_hard_iface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_hard_iface*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct batadv_hard_iface *hard_iface)
{
	FUNC0();

	/* first deactivate interface */
	if (hard_iface->if_status != BATADV_IF_NOT_IN_USE)
		FUNC2(hard_iface,
						BATADV_IF_CLEANUP_KEEP);

	if (hard_iface->if_status != BATADV_IF_NOT_IN_USE)
		return;

	hard_iface->if_status = BATADV_IF_TO_BE_REMOVED;
	FUNC1(hard_iface);
	FUNC4(&hard_iface->hardif_obj);
	FUNC3(hard_iface);
}