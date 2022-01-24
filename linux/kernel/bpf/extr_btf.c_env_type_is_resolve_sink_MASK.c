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
struct btf_verifier_env {int resolve_mode; } ;
struct btf_type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  RESOLVE_PTR 130 
#define  RESOLVE_STRUCT_OR_ARRAY 129 
#define  RESOLVE_TBD 128 
 int /*<<< orphan*/  FUNC1 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC2 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC3 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC4 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC5 (struct btf_type const*) ; 

__attribute__((used)) static bool FUNC6(const struct btf_verifier_env *env,
				     const struct btf_type *next_type)
{
	switch (env->resolve_mode) {
	case RESOLVE_TBD:
		/* int, enum or void is a sink */
		return !FUNC5(next_type);
	case RESOLVE_PTR:
		/* int, enum, void, struct, array, func or func_proto is a sink
		 * for ptr
		 */
		return !FUNC2(next_type) &&
			!FUNC3(next_type);
	case RESOLVE_STRUCT_OR_ARRAY:
		/* int, enum, void, ptr, func or func_proto is a sink
		 * for struct and array
		 */
		return !FUNC2(next_type) &&
			!FUNC1(next_type) &&
			!FUNC4(next_type);
	default:
		FUNC0();
	}
}