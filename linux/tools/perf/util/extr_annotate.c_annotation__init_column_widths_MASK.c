#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct symbol {int /*<<< orphan*/  end; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_ins_name; int /*<<< orphan*/  jumps; void* max_addr; void* min_addr; void* target; void* addr; } ;
struct annotation {TYPE_1__ widths; int /*<<< orphan*/  max_jump_sources; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct annotation*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct annotation *notes, struct symbol *sym)
{
	notes->widths.addr = notes->widths.target =
		notes->widths.min_addr = FUNC1(FUNC2(sym));
	notes->widths.max_addr = FUNC1(sym->end);
	notes->widths.jumps = FUNC3(notes->max_jump_sources);
	notes->widths.max_ins_name = FUNC0(notes);
}