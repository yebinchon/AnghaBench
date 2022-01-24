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
struct TYPE_3__ {scalar_t__ latest_ip_addr; struct TYPE_3__* next; int /*<<< orphan*/  use; } ;
typedef  TYPE_1__ eg_cache_entry ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static eg_cache_entry *FUNC3(__be32 ipaddr,
					      struct mpoa_client *mpc)
{
	eg_cache_entry *entry;

	FUNC0(&mpc->egress_lock);
	entry = mpc->eg_cache;
	while (entry != NULL) {
		if (entry->latest_ip_addr == ipaddr) {
			FUNC2(&entry->use);
			FUNC1(&mpc->egress_lock);
			return entry;
		}
		entry = entry->next;
	}
	FUNC1(&mpc->egress_lock);

	return NULL;
}