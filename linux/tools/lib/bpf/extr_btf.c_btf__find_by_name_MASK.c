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
struct btf_type {int /*<<< orphan*/  name_off; } ;
struct btf {size_t nr_types; struct btf_type** types; } ;
typedef  size_t __u32 ;
typedef  size_t __s32 ;

/* Variables and functions */
 size_t ENOENT ; 
 char* FUNC0 (struct btf const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 

__s32 FUNC2(const struct btf *btf, const char *type_name)
{
	__u32 i;

	if (!FUNC1(type_name, "void"))
		return 0;

	for (i = 1; i <= btf->nr_types; i++) {
		const struct btf_type *t = btf->types[i];
		const char *name = FUNC0(btf, t->name_off);

		if (name && !FUNC1(type_name, name))
			return i;
	}

	return -ENOENT;
}