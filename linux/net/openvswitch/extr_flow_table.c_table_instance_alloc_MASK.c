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
typedef  int /*<<< orphan*/  u32 ;
struct table_instance {int n_buckets; int keep_flows; int /*<<< orphan*/  hash_seed; scalar_t__ node_ver; int /*<<< orphan*/ * buckets; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct table_instance*) ; 
 struct table_instance* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct table_instance *FUNC5(int new_size)
{
	struct table_instance *ti = FUNC3(sizeof(*ti), GFP_KERNEL);
	int i;

	if (!ti)
		return NULL;

	ti->buckets = FUNC4(new_size, sizeof(struct hlist_head),
				     GFP_KERNEL);
	if (!ti->buckets) {
		FUNC2(ti);
		return NULL;
	}

	for (i = 0; i < new_size; i++)
		FUNC0(&ti->buckets[i]);

	ti->n_buckets = new_size;
	ti->node_ver = 0;
	ti->keep_flows = false;
	FUNC1(&ti->hash_seed, sizeof(u32));

	return ti;
}