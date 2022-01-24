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
struct btf_verifier_env {int dummy; } ;
struct btf_type {int dummy; } ;
struct btf_array {int /*<<< orphan*/  nelems; int /*<<< orphan*/  index_type; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 struct btf_array* FUNC0 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC1 (struct btf_verifier_env*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct btf_verifier_env *env,
			  const struct btf_type *t)
{
	const struct btf_array *array = FUNC0(t);

	FUNC1(env, "type_id=%u index_type_id=%u nr_elems=%u",
			 array->type, array->index_type, array->nelems);
}