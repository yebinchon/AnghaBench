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
struct btf_type {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btf_verifier_env*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct btf_verifier_env *env,
			     const struct btf_type *t)
{
	FUNC0(env, "type_id=%u", t->type);
}