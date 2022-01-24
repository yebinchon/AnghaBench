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
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static struct ins_ops *FUNC2(struct arch *arch,
					       const char *name)
{
	struct ins_ops *ops = NULL;

	/* catch all kind of jumps */
	if (!FUNC1(name, "bt") ||
	    !FUNC1(name, "bf") ||
	    !FUNC1(name, "bez") ||
	    !FUNC1(name, "bnez") ||
	    !FUNC1(name, "bnezad") ||
	    !FUNC1(name, "bhsz") ||
	    !FUNC1(name, "bhz") ||
	    !FUNC1(name, "blsz") ||
	    !FUNC1(name, "blz") ||
	    !FUNC1(name, "br") ||
	    !FUNC1(name, "jmpi") ||
	    !FUNC1(name, "jmp"))
		ops = &jump_ops;

	/* catch function call */
	if (!FUNC1(name, "bsr") ||
	    !FUNC1(name, "jsri") ||
	    !FUNC1(name, "jsr"))
		ops = &call_ops;

	/* catch function return */
	if (!FUNC1(name, "rts"))
		ops = &ret_ops;

	if (ops)
		FUNC0(arch, name, ops);
	return ops;
}