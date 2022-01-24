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
struct arch {struct ins_ops* (* associate_instruction_ops ) (struct arch*,char const*) ;} ;

/* Variables and functions */
 struct ins_ops* FUNC0 (struct arch*,char const*) ; 
 struct ins_ops* FUNC1 (struct arch*,char const*) ; 

__attribute__((used)) static struct ins_ops *FUNC2(struct arch *arch, const char *name)
{
	struct ins_ops *ops = FUNC0(arch, name);

	if (!ops && arch->associate_instruction_ops)
		ops = arch->associate_instruction_ops(arch, name);

	return ops;
}