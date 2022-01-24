#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  ops; TYPE_2__ ins; } ;
struct ins_operands {TYPE_1__ locked; } ;
struct ins {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct ins*,char*,size_t,struct ins_operands*,int) ; 
 int FUNC1 (TYPE_2__*,char*,size_t,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char*,size_t,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ins *ins, char *bf, size_t size,
			   struct ins_operands *ops, int max_ins_name)
{
	int printed;

	if (ops->locked.ins.ops == NULL)
		return FUNC0(ins, bf, size, ops, max_ins_name);

	printed = FUNC2(bf, size, "%-*s ", max_ins_name, ins->name);
	return printed + FUNC1(&ops->locked.ins, bf + printed,
					size - printed, ops->locked.ops, max_ins_name);
}