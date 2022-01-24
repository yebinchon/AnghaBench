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
 struct ins_ops jump_ops ; 
 struct ins_ops ret_ops ; 
 struct ins_ops s390_call_ops ; 
 struct ins_ops s390_mov_ops ; 
 scalar_t__ FUNC1 (char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 

__attribute__((used)) static struct ins_ops *FUNC4(struct arch *arch, const char *name)
{
	struct ins_ops *ops = NULL;

	/* catch all kind of jumps */
	if (FUNC1(name, 'j') ||
	    !FUNC3(name, "bct", 3) ||
	    !FUNC3(name, "br", 2))
		ops = &jump_ops;
	/* override call/returns */
	if (!FUNC2(name, "bras") ||
	    !FUNC2(name, "brasl") ||
	    !FUNC2(name, "basr"))
		ops = &s390_call_ops;
	if (!FUNC2(name, "br"))
		ops = &ret_ops;
	/* override load/store relative to PC */
	if (!FUNC2(name, "lrl") ||
	    !FUNC2(name, "lgrl") ||
	    !FUNC2(name, "lgfrl") ||
	    !FUNC2(name, "llgfrl") ||
	    !FUNC2(name, "strl") ||
	    !FUNC2(name, "stgrl"))
		ops = &s390_mov_ops;

	if (ops)
		FUNC0(arch, name, ops);
	return ops;
}