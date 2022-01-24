#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time64_t ;
struct mpoa_client {int /*<<< orphan*/  egress_lock; TYPE_3__* eg_ops; TYPE_4__* eg_cache; } ;
struct TYPE_7__ {scalar_t__ holding_time; int /*<<< orphan*/  cache_id; } ;
struct TYPE_6__ {TYPE_2__ eg_info; } ;
struct k_message {TYPE_1__ content; int /*<<< orphan*/  type; } ;
struct TYPE_9__ {scalar_t__ time; TYPE_2__ ctrl_info; struct TYPE_9__* next; } ;
typedef  TYPE_4__ eg_cache_entry ;
struct TYPE_8__ {int /*<<< orphan*/  (* remove_entry ) (TYPE_4__*,struct mpoa_client*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SND_EGRESS_PURGE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct k_message*,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct mpoa_client *client)
{
	eg_cache_entry *entry, *next_entry;
	time64_t now;
	struct k_message msg;

	now = FUNC1();

	FUNC5(&client->egress_lock);
	entry = client->eg_cache;
	while (entry != NULL) {
		next_entry = entry->next;
		if ((now - entry->time) > entry->ctrl_info.holding_time) {
			msg.type = SND_EGRESS_PURGE;
			msg.content.eg_info = entry->ctrl_info;
			FUNC0("egress_cache: holding time expired, cache_id = %u.\n",
				FUNC3(entry->ctrl_info.cache_id));
			FUNC2(&msg, client);
			client->eg_ops->remove_entry(entry, client);
		}
		entry = next_entry;
	}
	FUNC6(&client->egress_lock);
}