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
struct tracing_map_sort_entry {int /*<<< orphan*/  elt; int /*<<< orphan*/  key; } ;
struct tracing_map {int dummy; } ;
struct seq_file {int dummy; } ;
struct hist_trigger_data {int /*<<< orphan*/  n_sort_keys; int /*<<< orphan*/  sort_keys; struct tracing_map* map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,struct hist_trigger_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tracing_map_sort_entry**,int) ; 
 int FUNC2 (struct tracing_map*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tracing_map_sort_entry***) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m,
			 struct hist_trigger_data *hist_data)
{
	struct tracing_map_sort_entry **sort_entries = NULL;
	struct tracing_map *map = hist_data->map;
	int i, n_entries;

	n_entries = FUNC2(map, hist_data->sort_keys,
					     hist_data->n_sort_keys,
					     &sort_entries);
	if (n_entries < 0)
		return n_entries;

	for (i = 0; i < n_entries; i++)
		FUNC0(m, hist_data,
					 sort_entries[i]->key,
					 sort_entries[i]->elt);

	FUNC1(sort_entries, n_entries);

	return n_entries;
}