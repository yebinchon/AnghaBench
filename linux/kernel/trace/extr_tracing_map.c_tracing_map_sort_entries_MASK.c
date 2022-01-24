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
struct tracing_map_sort_key {int /*<<< orphan*/  field_idx; } ;
struct tracing_map_sort_entry {int dummy; } ;
struct tracing_map_entry {TYPE_1__* val; int /*<<< orphan*/  key; } ;
struct tracing_map {int map_size; int /*<<< orphan*/  key_size; int /*<<< orphan*/  map; int /*<<< orphan*/  max_elts; } ;
typedef  int /*<<< orphan*/  sort_entry ;
struct TYPE_2__ {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct tracing_map_entry* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tracing_map_sort_entry const**,struct tracing_map_sort_entry const**) ; 
 int FUNC3 (struct tracing_map_sort_entry const**,struct tracing_map_sort_entry const**) ; 
 struct tracing_map_sort_entry* FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct tracing_map_sort_entry**,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct tracing_map*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tracing_map*,struct tracing_map_sort_key*) ; 
 int /*<<< orphan*/  FUNC8 (struct tracing_map_sort_entry**,int,int,int (*) (void const*,void const*),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct tracing_map*,struct tracing_map_sort_entry const**,int,struct tracing_map_sort_key*,struct tracing_map_sort_key*) ; 
 int /*<<< orphan*/  FUNC10 (struct tracing_map_sort_entry**,int) ; 
 struct tracing_map_sort_entry** FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(struct tracing_map *map,
			     struct tracing_map_sort_key *sort_keys,
			     unsigned int n_sort_keys,
			     struct tracing_map_sort_entry ***sort_entries)
{
	int (*cmp_entries_fn)(const struct tracing_map_sort_entry **,
			      const struct tracing_map_sort_entry **);
	struct tracing_map_sort_entry *sort_entry, **entries;
	int i, n_entries, ret;

	entries = FUNC11(FUNC1(sizeof(sort_entry), map->max_elts));
	if (!entries)
		return -ENOMEM;

	for (i = 0, n_entries = 0; i < map->map_size; i++) {
		struct tracing_map_entry *entry;

		entry = FUNC0(map->map, i);

		if (!entry->key || !entry->val)
			continue;

		entries[n_entries] = FUNC4(entry->val->key,
						       entry->val);
		if (!entries[n_entries++]) {
			ret = -ENOMEM;
			goto free;
		}
	}

	if (n_entries == 0) {
		ret = 0;
		goto free;
	}

	if (n_entries == 1) {
		*sort_entries = entries;
		return 1;
	}

	FUNC5(entries, n_entries, map->key_size);

	if (FUNC6(map, sort_keys[0].field_idx))
		cmp_entries_fn = cmp_entries_key;
	else
		cmp_entries_fn = cmp_entries_sum;

	FUNC7(map, &sort_keys[0]);

	FUNC8(entries, n_entries, sizeof(struct tracing_map_sort_entry *),
	     (int (*)(const void *, const void *))cmp_entries_fn, NULL);

	if (n_sort_keys > 1)
		FUNC9(map,
			       (const struct tracing_map_sort_entry **)entries,
			       n_entries,
			       &sort_keys[0],
			       &sort_keys[1]);

	*sort_entries = entries;

	return n_entries;
 free:
	FUNC10(entries, n_entries);

	return ret;
}