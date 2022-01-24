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
struct symbol {int dummy; } ;
struct cyc_hist {int dummy; } ;
struct annotation {TYPE_1__* src; } ;
struct TYPE_2__ {int /*<<< orphan*/ * cycles_hist; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (size_t const,int) ; 
 struct annotation* FUNC1 (struct symbol*) ; 
 size_t FUNC2 (struct symbol*) ; 

__attribute__((used)) static int FUNC3(struct symbol *sym)
{
	struct annotation *notes = FUNC1(sym);
	const size_t size = FUNC2(sym);

	notes->src->cycles_hist = FUNC0(size, sizeof(struct cyc_hist));
	if (notes->src->cycles_hist == NULL)
		return -1;
	return 0;
}