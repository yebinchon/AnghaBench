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
struct bpf_object {int dummy; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bpf_map*) ; 
 struct bpf_map* FUNC1 (struct bpf_object*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(const char *test, struct bpf_object *obj, const char *name)
{
	struct bpf_map *map;

	map = FUNC1(obj, name);
	if (!map) {
		FUNC2("%s:FAIL:map '%s' not found\n", test, name);
		FUNC3();
		return -1;
	}
	return FUNC0(map);
}