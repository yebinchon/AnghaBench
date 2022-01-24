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
struct btf_type {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct btf_type const*) ; 
 int /*<<< orphan*/  FUNC5 (struct btf_verifier_env*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct btf_verifier_env *env,
			const struct btf_type *t)
{
	int int_data = FUNC4(t);

	FUNC5(env,
			 "size=%u bits_offset=%u nr_bits=%u encoding=%s",
			 t->size, FUNC2(int_data),
			 FUNC0(int_data),
			 FUNC3(FUNC1(int_data)));
}