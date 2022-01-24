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
struct TYPE_4__ {void* key; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* map_seq_show_elem ) (struct bpf_map*,void*,struct seq_file*) ;} ;

/* Variables and functions */
 void* SEQ_START_TOKEN ; 
 TYPE_2__* FUNC0 (struct seq_file*) ; 
 struct bpf_map* FUNC1 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_map*,void*,struct seq_file*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct seq_file *m, void *v)
{
	struct bpf_map *map = FUNC1(m);
	void *key = FUNC0(m)->key;

	if (FUNC4(v == SEQ_START_TOKEN)) {
		FUNC2(m, "# WARNING!! The output is for debug purpose only\n");
		FUNC2(m, "# WARNING!! The output format will change\n");
	} else {
		map->ops->map_seq_show_elem(map, key, m);
	}

	return 0;
}