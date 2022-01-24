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
struct btf_type {int /*<<< orphan*/  type; } ;
struct btf_member {int /*<<< orphan*/  name_off; int /*<<< orphan*/  type; } ;
struct btf_array {int /*<<< orphan*/  nelems; } ;
struct btf {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 char* FUNC0 (struct btf const*,int /*<<< orphan*/ ) ; 
 struct btf_type* FUNC1 (struct btf const*,int /*<<< orphan*/ ) ; 
 struct btf_array* FUNC2 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC3 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC4 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC5 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char const*,int /*<<< orphan*/ ) ; 
 struct btf_type* FUNC7 (struct btf const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC8(const char *map_name, const struct btf *btf,
			      const struct btf_type *def,
			      const struct btf_member *m, __u32 *res) {
	const struct btf_type *t = FUNC7(btf, m->type, NULL);
	const char *name = FUNC0(btf, m->name_off);
	const struct btf_array *arr_info;
	const struct btf_type *arr_t;

	if (!FUNC4(t)) {
		FUNC6("map '%s': attr '%s': expected PTR, got %u.\n",
			   map_name, name, FUNC5(t));
		return false;
	}

	arr_t = FUNC1(btf, t->type);
	if (!arr_t) {
		FUNC6("map '%s': attr '%s': type [%u] not found.\n",
			   map_name, name, t->type);
		return false;
	}
	if (!FUNC3(arr_t)) {
		FUNC6("map '%s': attr '%s': expected ARRAY, got %u.\n",
			   map_name, name, FUNC5(arr_t));
		return false;
	}
	arr_info = FUNC2(arr_t);
	*res = arr_info->nelems;
	return true;
}