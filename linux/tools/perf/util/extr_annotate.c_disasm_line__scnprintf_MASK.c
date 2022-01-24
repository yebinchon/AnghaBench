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
struct TYPE_4__ {int /*<<< orphan*/  raw; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  ops; } ;
struct disasm_line {TYPE_2__ ops; TYPE_1__ ins; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,char*,size_t,TYPE_2__*,int) ; 
 int FUNC1 (char*,size_t,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct disasm_line *dl, char *bf, size_t size, bool raw, int max_ins_name)
{
	if (raw || !dl->ins.ops)
		return FUNC1(bf, size, "%-*s %s", max_ins_name, dl->ins.name, dl->ops.raw);

	return FUNC0(&dl->ins, bf, size, &dl->ops, max_ins_name);
}