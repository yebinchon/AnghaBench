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
typedef  size_t u32 ;
struct btf_type {size_t size; } ;
struct btf {size_t* resolved_sizes; size_t* resolved_ids; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct btf_type* FUNC1 (struct btf const*,size_t) ; 
 scalar_t__ FUNC2 (struct btf_type const*) ; 
 scalar_t__ FUNC3 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC4 (struct btf_type const*) ; 
 scalar_t__ FUNC5 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC6 (struct btf_type const*) ; 
 scalar_t__ FUNC7 (struct btf_type const*) ; 

const struct btf_type *FUNC8(const struct btf *btf,
					u32 *type_id, u32 *ret_size)
{
	const struct btf_type *size_type;
	u32 size_type_id = *type_id;
	u32 size = 0;

	size_type = FUNC1(btf, size_type_id);
	if (FUNC7(size_type))
		return NULL;

	if (FUNC2(size_type)) {
		size = size_type->size;
	} else if (FUNC3(size_type)) {
		size = btf->resolved_sizes[size_type_id];
	} else if (FUNC5(size_type)) {
		size = sizeof(void *);
	} else {
		if (FUNC0(!FUNC4(size_type) &&
				 !FUNC6(size_type)))
			return NULL;

		size_type_id = btf->resolved_ids[size_type_id];
		size_type = FUNC1(btf, size_type_id);
		if (FUNC7(size_type))
			return NULL;
		else if (FUNC2(size_type))
			size = size_type->size;
		else if (FUNC3(size_type))
			size = btf->resolved_sizes[size_type_id];
		else if (FUNC5(size_type))
			size = sizeof(void *);
		else
			return NULL;
	}

	*type_id = size_type_id;
	if (ret_size)
		*ret_size = size;

	return size_type;
}