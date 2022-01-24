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
struct ins_ops {int dummy; } ;
struct arch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arch*,char const*,struct ins_ops*) ; 
 struct ins_ops call_ops ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 struct ins_ops jump_ops ; 
 struct ins_ops mov_ops ; 
 struct ins_ops ret_ops ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static struct ins_ops *FUNC5(struct arch *arch, const char *name)
{
	struct ins_ops *ops = NULL;

	if (!FUNC4(name, "call") ||
	    !FUNC4(name, "jmp") ||
	    !FUNC4(name, "jmpl")) {
		ops = &call_ops;
	} else if (!FUNC4(name, "ret") ||
		   !FUNC4(name, "retl") ||
		   !FUNC4(name, "return")) {
		ops = &ret_ops;
	} else if (!FUNC4(name, "mov")) {
		ops = &mov_ops;
	} else {
		if (name[0] == 'c' &&
		    (name[1] == 'w' || name[1] == 'x'))
			name += 2;

		if (name[0] == 'b') {
			const char *cond = name + 1;

			if (cond[0] == 'r') {
				if (FUNC3(cond + 1))
					ops = &jump_ops;
			} else if (FUNC1(cond)) {
				ops = &jump_ops;
			}
		} else if (name[0] == 'f' && name[1] == 'b') {
			if (FUNC2(name + 2))
				ops = &jump_ops;
		}
	}

	if (ops)
		FUNC0(arch, name, ops);

	return ops;
}