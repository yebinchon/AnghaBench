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
 struct ins_ops jump_ops ; 
 struct ins_ops ret_ops ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 

__attribute__((used)) static struct ins_ops *FUNC4(struct arch *arch, const char *name)
{
	int i;
	struct ins_ops *ops;

	/*
	 * - Interested only if instruction starts with 'b'.
	 * - Few start with 'b', but aren't branch instructions.
	 */
	if (name[0] != 'b'             ||
	    !FUNC3(name, "bcd", 3)   ||
	    !FUNC3(name, "brinc", 5) ||
	    !FUNC3(name, "bper", 4))
		return NULL;

	ops = &jump_ops;

	i = FUNC2(name) - 1;
	if (i < 0)
		return NULL;

	/* ignore optional hints at the end of the instructions */
	if (name[i] == '+' || name[i] == '-')
		i--;

	if (name[i] == 'l' || (name[i] == 'a' && name[i-1] == 'l')) {
		/*
		 * if the instruction ends up with 'l' or 'la', then
		 * those are considered 'calls' since they update LR.
		 * ... except for 'bnl' which is branch if not less than
		 * and the absolute form of the same.
		 */
		if (FUNC1(name, "bnl") && FUNC1(name, "bnl+") &&
		    FUNC1(name, "bnl-") && FUNC1(name, "bnla") &&
		    FUNC1(name, "bnla+") && FUNC1(name, "bnla-"))
			ops = &call_ops;
	}
	if (name[i] == 'r' && name[i-1] == 'l')
		/*
		 * instructions ending with 'lr' are considered to be
		 * return instructions
		 */
		ops = &ret_ops;

	FUNC0(arch, name, ops);
	return ops;
}