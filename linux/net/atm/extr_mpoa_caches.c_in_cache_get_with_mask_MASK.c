#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mpoa_client {int /*<<< orphan*/  ingress_lock; TYPE_2__* in_cache; } ;
struct TYPE_4__ {int in_dst_ip; } ;
struct TYPE_5__ {struct TYPE_5__* next; int /*<<< orphan*/  use; TYPE_1__ ctrl_info; } ;
typedef  TYPE_2__ in_cache_entry ;
typedef  int __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static in_cache_entry *FUNC3(__be32 dst_ip,
					      struct mpoa_client *client,
					      __be32 mask)
{
	in_cache_entry *entry;

	FUNC0(&client->ingress_lock);
	entry = client->in_cache;
	while (entry != NULL) {
		if ((entry->ctrl_info.in_dst_ip & mask) == (dst_ip & mask)) {
			FUNC2(&entry->use);
			FUNC1(&client->ingress_lock);
			return entry;
		}
		entry = entry->next;
	}
	FUNC1(&client->ingress_lock);

	return NULL;

}