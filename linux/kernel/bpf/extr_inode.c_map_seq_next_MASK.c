#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct bpf_map {TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_4__ {int done; void* key; } ;
struct TYPE_3__ {scalar_t__ (* map_get_next_key ) (struct bpf_map*,void*,void*) ;} ;

/* Variables and functions */
 void* SEQ_START_TOKEN ; 
 TYPE_2__* FUNC0 (struct seq_file*) ; 
 struct bpf_map* FUNC1 (struct seq_file*) ; 
 scalar_t__ FUNC2 (struct bpf_map*,void*,void*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void *FUNC4(struct seq_file *m, void *v, loff_t *pos)
{
	struct bpf_map *map = FUNC1(m);
	void *key = FUNC0(m)->key;
	void *prev_key;

	if (FUNC0(m)->done)
		return NULL;

	if (FUNC3(v == SEQ_START_TOKEN))
		prev_key = NULL;
	else
		prev_key = key;

	if (map->ops->map_get_next_key(map, prev_key, key)) {
		FUNC0(m)->done = true;
		return NULL;
	}

	++(*pos);
	return key;
}