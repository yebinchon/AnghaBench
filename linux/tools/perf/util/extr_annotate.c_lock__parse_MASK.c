#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct map_symbol {int dummy; } ;
struct TYPE_7__ {TYPE_6__* ops; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_3__* ops; TYPE_1__ ins; } ;
struct ins_operands {TYPE_2__ locked; int /*<<< orphan*/  raw; } ;
struct arch {int dummy; } ;
struct TYPE_10__ {scalar_t__ (* parse ) (struct arch*,TYPE_3__*,struct map_symbol*) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC1 (struct arch*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct arch*,TYPE_3__*,struct map_symbol*) ; 
 TYPE_3__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__**) ; 

__attribute__((used)) static int FUNC5(struct arch *arch, struct ins_operands *ops, struct map_symbol *ms)
{
	ops->locked.ops = FUNC3(sizeof(*ops->locked.ops));
	if (ops->locked.ops == NULL)
		return 0;

	if (FUNC0(ops->raw, &ops->locked.ins.name, &ops->locked.ops->raw) < 0)
		goto out_free_ops;

	ops->locked.ins.ops = FUNC1(arch, ops->locked.ins.name);

	if (ops->locked.ins.ops == NULL)
		goto out_free_ops;

	if (ops->locked.ins.ops->parse &&
	    ops->locked.ins.ops->parse(arch, ops->locked.ops, ms) < 0)
		goto out_free_ops;

	return 0;

out_free_ops:
	FUNC4(&ops->locked.ops);
	return 0;
}