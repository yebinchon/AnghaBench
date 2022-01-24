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
typedef  int u32 ;
struct tracing_map_entry {int key; struct tracing_map_elt* val; } ;
struct tracing_map_elt {int /*<<< orphan*/  key; } ;
struct tracing_map {int map_bits; int map_size; int /*<<< orphan*/  hits; int /*<<< orphan*/  key_size; int /*<<< orphan*/  drops; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 struct tracing_map_elt* FUNC0 (struct tracing_map_elt*) ; 
 struct tracing_map_entry* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 struct tracing_map_elt* FUNC4 (struct tracing_map*) ; 
 int FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static inline struct tracing_map_elt *
FUNC9(struct tracing_map *map, void *key, bool lookup_only)
{
	u32 idx, key_hash, test_key;
	int dup_try = 0;
	struct tracing_map_entry *entry;
	struct tracing_map_elt *val;

	key_hash = FUNC5(key, map->key_size, 0);
	if (key_hash == 0)
		key_hash = 1;
	idx = key_hash >> (32 - (map->map_bits + 1));

	while (1) {
		idx &= (map->map_size - 1);
		entry = FUNC1(map->map, idx);
		test_key = entry->key;

		if (test_key && test_key == key_hash) {
			val = FUNC0(entry->val);
			if (val &&
			    FUNC6(key, val->key, map->key_size)) {
				if (!lookup_only)
					FUNC2(&map->hits);
				return val;
			} else if (FUNC8(!val)) {
				/*
				 * The key is present. But, val (pointer to elt
				 * struct) is still NULL. which means some other
				 * thread is in the process of inserting an
				 * element.
				 *
				 * On top of that, it's key_hash is same as the
				 * one being inserted right now. So, it's
				 * possible that the element has the same
				 * key as well.
				 */

				dup_try++;
				if (dup_try > map->map_size) {
					FUNC2(&map->drops);
					break;
				}
				continue;
			}
		}

		if (!test_key) {
			if (lookup_only)
				break;

			if (!FUNC3(&entry->key, 0, key_hash)) {
				struct tracing_map_elt *elt;

				elt = FUNC4(map);
				if (!elt) {
					FUNC2(&map->drops);
					entry->key = 0;
					break;
				}

				FUNC7(elt->key, key, map->key_size);
				entry->val = elt;
				FUNC2(&map->hits);

				return entry->val;
			} else {
				/*
				 * cmpxchg() failed. Loop around once
				 * more to check what key was inserted.
				 */
				dup_try++;
				continue;
			}
		}

		idx++;
	}

	return NULL;
}