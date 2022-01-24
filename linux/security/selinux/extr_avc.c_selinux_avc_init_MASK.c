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
struct TYPE_2__ {int /*<<< orphan*/  lru_hint; int /*<<< orphan*/  active_nodes; int /*<<< orphan*/ * slots_lock; int /*<<< orphan*/ * slots; } ;
struct selinux_avc {TYPE_1__ avc_cache; int /*<<< orphan*/  avc_cache_threshold; } ;

/* Variables and functions */
 int AVC_CACHE_SLOTS ; 
 int /*<<< orphan*/  AVC_DEF_CACHE_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct selinux_avc selinux_avc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct selinux_avc **avc)
{
	int i;

	selinux_avc.avc_cache_threshold = AVC_DEF_CACHE_THRESHOLD;
	for (i = 0; i < AVC_CACHE_SLOTS; i++) {
		FUNC0(&selinux_avc.avc_cache.slots[i]);
		FUNC2(&selinux_avc.avc_cache.slots_lock[i]);
	}
	FUNC1(&selinux_avc.avc_cache.active_nodes, 0);
	FUNC1(&selinux_avc.avc_cache.lru_hint, 0);
	*avc = &selinux_avc;
}