#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time64_t ;
struct mpoa_client {int /*<<< orphan*/  ingress_lock; TYPE_2__* in_ops; TYPE_3__* in_cache; } ;
struct TYPE_5__ {scalar_t__ holding_time; int /*<<< orphan*/  in_dst_ip; } ;
struct TYPE_7__ {scalar_t__ time; TYPE_1__ ctrl_info; struct TYPE_7__* next; scalar_t__ count; } ;
typedef  TYPE_3__ in_cache_entry ;
struct TYPE_6__ {int /*<<< orphan*/  (* remove_entry ) (TYPE_3__*,struct mpoa_client*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mpoa_client *client)
{
	in_cache_entry *entry, *next_entry;
	time64_t now;

	now = FUNC1();

	FUNC3(&client->ingress_lock);
	entry = client->in_cache;
	while (entry != NULL) {
		entry->count = 0;
		next_entry = entry->next;
		if ((now - entry->time) > entry->ctrl_info.holding_time) {
			FUNC0("holding time expired, ip = %pI4\n",
				&entry->ctrl_info.in_dst_ip);
			client->in_ops->remove_entry(entry, client);
		}
		entry = next_entry;
	}
	FUNC4(&client->ingress_lock);
}