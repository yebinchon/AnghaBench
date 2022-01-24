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
struct btf_type {int /*<<< orphan*/  info; int /*<<< orphan*/  name_off; scalar_t__ type; } ;
struct btf_param {int /*<<< orphan*/  name_off; scalar_t__ type; } ;
struct btf {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct btf const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const struct btf *btf, char *func_sig,
			 const struct btf_type *func_proto,
			 const struct btf_type *func, int pos, int size)
{
	int i, vlen;

	FUNC2(func_proto->type);
	if (func)
		FUNC1("%s(", FUNC3(btf, func->name_off));
	else
		FUNC1("(");
	vlen = FUNC0(func_proto->info);
	for (i = 0; i < vlen; i++) {
		struct btf_param *arg = &((struct btf_param *)(func_proto + 1))[i];

		if (i)
			FUNC1(", ");
		if (arg->type) {
			FUNC2(arg->type);
			FUNC1("%s",
				      FUNC3(btf, arg->name_off));
		} else {
			FUNC1("...");
		}
	}
	FUNC1(")");

	return pos;
}