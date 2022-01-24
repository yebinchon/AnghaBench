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
struct btf_type {int dummy; } ;
struct btf_dumper {int /*<<< orphan*/  jw; int /*<<< orphan*/  btf; } ;
struct btf_array {long long nelems; int /*<<< orphan*/  type; } ;
typedef  long long __u32 ;

/* Variables and functions */
 long long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct btf_type* FUNC1 (int /*<<< orphan*/ ,long long) ; 
 int FUNC2 (struct btf_dumper const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct btf_dumper *d, __u32 type_id,
			    const void *data)
{
	const struct btf_type *t = FUNC1(d->btf, type_id);
	struct btf_array *arr = (struct btf_array *)(t + 1);
	long long elem_size;
	int ret = 0;
	__u32 i;

	elem_size = FUNC0(d->btf, arr->type);
	if (elem_size < 0)
		return elem_size;

	FUNC4(d->jw);
	for (i = 0; i < arr->nelems; i++) {
		ret = FUNC2(d, arr->type, 0,
					 data + i * elem_size);
		if (ret)
			break;
	}

	FUNC3(d->jw);
	return ret;
}