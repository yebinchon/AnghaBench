#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct btf_type {int /*<<< orphan*/  size; } ;
struct btf {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
#define  BTF_KIND_ARRAY 132 
#define  BTF_KIND_ENUM 131 
#define  BTF_KIND_FWD 130 
#define  BTF_KIND_INT 129 
#define  BTF_KIND_PTR 128 
 int EINVAL ; 
 TYPE_1__* FUNC0 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC1 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC2 (struct btf_type const*) ; 
 scalar_t__ FUNC3 (struct btf_type const*) ; 
 int FUNC4 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct btf_type* FUNC6 (struct btf const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(const struct btf *local_btf,
				      __u32 local_id,
				      const struct btf *targ_btf,
				      __u32 targ_id)
{
	const struct btf_type *local_type, *targ_type;

recur:
	local_type = FUNC6(local_btf, local_id, &local_id);
	targ_type = FUNC6(targ_btf, targ_id, &targ_id);
	if (!local_type || !targ_type)
		return -EINVAL;

	if (FUNC3(local_type) && FUNC3(targ_type))
		return 1;
	if (FUNC4(local_type) != FUNC4(targ_type))
		return 0;

	switch (FUNC4(local_type)) {
	case BTF_KIND_FWD:
	case BTF_KIND_PTR:
		return 1;
	case BTF_KIND_ENUM:
		return local_type->size == targ_type->size;
	case BTF_KIND_INT:
		return FUNC2(local_type) == 0 &&
		       FUNC2(targ_type) == 0 &&
		       local_type->size == targ_type->size &&
		       FUNC1(local_type) == FUNC1(targ_type);
	case BTF_KIND_ARRAY:
		local_id = FUNC0(local_type)->type;
		targ_id = FUNC0(targ_type)->type;
		goto recur;
	default:
		FUNC5("unexpected kind %d relocated, local [%d], target [%d]\n",
			   FUNC4(local_type), local_id, targ_id);
		return 0;
	}
}