#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mpoa_client {int /*<<< orphan*/  egress_lock; TYPE_1__* eg_cache; } ;
struct atm_vcc {int dummy; } ;
struct TYPE_3__ {struct TYPE_3__* next; int /*<<< orphan*/  use; struct atm_vcc* shortcut; } ;
typedef  TYPE_1__ eg_cache_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static eg_cache_entry *FUNC3(struct atm_vcc *vcc,
					   struct mpoa_client *mpc)
{
	unsigned long flags;
	eg_cache_entry *entry;

	FUNC0(&mpc->egress_lock, flags);
	entry = mpc->eg_cache;
	while (entry != NULL) {
		if (entry->shortcut == vcc) {
			FUNC2(&entry->use);
			FUNC1(&mpc->egress_lock, flags);
			return entry;
		}
		entry = entry->next;
	}
	FUNC1(&mpc->egress_lock, flags);

	return NULL;
}