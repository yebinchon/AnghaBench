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
struct bpf_map {int /*<<< orphan*/  btf_value_type_id; int /*<<< orphan*/  btf; scalar_t__ btf_key_type_id; } ;

/* Variables and functions */
 void* FUNC0 (struct bpf_map*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC6(struct bpf_map *map, void *key,
				    struct seq_file *m)
{
	void *value;

	FUNC2();

	value = FUNC0(map, key);
	if (!value) {
		FUNC3();
		return;
	}

	if (map->btf_key_type_id)
		FUNC4(m, "%u: ", *(u32 *)key);
	FUNC1(map->btf, map->btf_value_type_id, value, m);
	FUNC5(m, "\n");

	FUNC3();
}