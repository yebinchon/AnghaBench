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
struct seq_file {int dummy; } ;
struct bpf_map {int /*<<< orphan*/  btf_value_type_id; int /*<<< orphan*/  btf; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void** FUNC1 (struct bpf_map*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC8(struct bpf_map *map, void *key,
					 struct seq_file *m)
{
	void **elem, *ptr;
	u32 prog_id;

	FUNC4();

	elem = FUNC1(map, key);
	if (elem) {
		ptr = FUNC0(*elem);
		if (ptr) {
			FUNC6(m, "%u: ", *(u32 *)key);
			prog_id = FUNC3(ptr);
			FUNC2(map->btf, map->btf_value_type_id,
					  &prog_id, m);
			FUNC7(m, "\n");
		}
	}

	FUNC5();
}