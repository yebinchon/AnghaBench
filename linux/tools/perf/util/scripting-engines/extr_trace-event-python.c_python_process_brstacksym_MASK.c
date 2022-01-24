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
typedef  size_t u64 ;
struct thread {int dummy; } ;
struct perf_sample {int /*<<< orphan*/  cpumode; struct branch_stack* branch_stack; } ;
struct branch_stack {size_t nr; TYPE_1__* entries; } ;
struct addr_location {int /*<<< orphan*/  sym; } ;
typedef  int /*<<< orphan*/  bf ;
struct TYPE_4__ {scalar_t__ abort; scalar_t__ in_tx; } ;
struct TYPE_3__ {TYPE_2__ flags; int /*<<< orphan*/  to; int /*<<< orphan*/  from; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct addr_location*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct addr_location*) ; 

__attribute__((used)) static PyObject *FUNC10(struct perf_sample *sample,
					   struct thread *thread)
{
	struct branch_stack *br = sample->branch_stack;
	PyObject *pylist;
	u64 i;
	char bf[512];
	struct addr_location al;

	pylist = FUNC2(0);
	if (!pylist)
		FUNC4("couldn't create Python list");

	if (!(br && br->nr))
		goto exit;

	for (i = 0; i < br->nr; i++) {
		PyObject *pyelem;

		pyelem = FUNC0();
		if (!pyelem)
			FUNC4("couldn't create Python dictionary");

		FUNC9(thread, sample->cpumode,
				       br->entries[i].from, &al);
		FUNC7(al.sym, &al, true, bf, sizeof(bf));
		FUNC8(pyelem, "from",
					      FUNC5(bf));

		FUNC9(thread, sample->cpumode,
				       br->entries[i].to, &al);
		FUNC7(al.sym, &al, true, bf, sizeof(bf));
		FUNC8(pyelem, "to",
					      FUNC5(bf));

		FUNC6(&br->entries[i].flags, bf, sizeof(bf));
		FUNC8(pyelem, "pred",
					      FUNC5(bf));

		if (br->entries[i].flags.in_tx) {
			FUNC8(pyelem, "in_tx",
					      FUNC5("X"));
		} else {
			FUNC8(pyelem, "in_tx",
					      FUNC5("-"));
		}

		if (br->entries[i].flags.abort) {
			FUNC8(pyelem, "abort",
					      FUNC5("A"));
		} else {
			FUNC8(pyelem, "abort",
					      FUNC5("-"));
		}

		FUNC1(pylist, pyelem);
		FUNC3(pyelem);
	}

exit:
	return pylist;
}