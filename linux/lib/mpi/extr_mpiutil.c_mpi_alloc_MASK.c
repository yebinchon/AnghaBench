#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int alloced; scalar_t__ nbits; scalar_t__ flags; scalar_t__ sign; scalar_t__ nlimbs; int /*<<< orphan*/ * d; } ;
typedef  TYPE_1__* MPI ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int) ; 

MPI FUNC3(unsigned nlimbs)
{
	MPI a;

	a = FUNC1(sizeof *a, GFP_KERNEL);
	if (!a)
		return a;

	if (nlimbs) {
		a->d = FUNC2(nlimbs);
		if (!a->d) {
			FUNC0(a);
			return NULL;
		}
	} else {
		a->d = NULL;
	}

	a->alloced = nlimbs;
	a->nlimbs = 0;
	a->sign = 0;
	a->flags = 0;
	a->nbits = 0;
	return a;
}