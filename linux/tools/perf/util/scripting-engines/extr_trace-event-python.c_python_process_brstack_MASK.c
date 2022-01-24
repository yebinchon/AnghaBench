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
struct branch_stack {size_t nr; TYPE_2__* entries; } ;
struct addr_location {int /*<<< orphan*/  map; } ;
struct TYPE_3__ {int /*<<< orphan*/  cycles; int /*<<< orphan*/  abort; int /*<<< orphan*/  in_tx; int /*<<< orphan*/  predicted; int /*<<< orphan*/  mispred; } ;
struct TYPE_4__ {int /*<<< orphan*/  to; int /*<<< orphan*/  from; TYPE_1__ flags; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct addr_location*) ; 

__attribute__((used)) static PyObject *FUNC11(struct perf_sample *sample,
					struct thread *thread)
{
	struct branch_stack *br = sample->branch_stack;
	PyObject *pylist;
	u64 i;

	pylist = FUNC3(0);
	if (!pylist)
		FUNC6("couldn't create Python list");

	if (!(br && br->nr))
		goto exit;

	for (i = 0; i < br->nr; i++) {
		PyObject *pyelem;
		struct addr_location al;
		const char *dsoname;

		pyelem = FUNC1();
		if (!pyelem)
			FUNC6("couldn't create Python dictionary");

		FUNC9(pyelem, "from",
		    FUNC4(br->entries[i].from));
		FUNC9(pyelem, "to",
		    FUNC4(br->entries[i].to));
		FUNC9(pyelem, "mispred",
		    FUNC0(br->entries[i].flags.mispred));
		FUNC9(pyelem, "predicted",
		    FUNC0(br->entries[i].flags.predicted));
		FUNC9(pyelem, "in_tx",
		    FUNC0(br->entries[i].flags.in_tx));
		FUNC9(pyelem, "abort",
		    FUNC0(br->entries[i].flags.abort));
		FUNC9(pyelem, "cycles",
		    FUNC4(br->entries[i].flags.cycles));

		FUNC10(thread, sample->cpumode,
				    br->entries[i].from, &al);
		dsoname = FUNC8(al.map);
		FUNC9(pyelem, "from_dsoname",
					      FUNC7(dsoname));

		FUNC10(thread, sample->cpumode,
				    br->entries[i].to, &al);
		dsoname = FUNC8(al.map);
		FUNC9(pyelem, "to_dsoname",
					      FUNC7(dsoname));

		FUNC2(pylist, pyelem);
		FUNC5(pyelem);
	}

exit:
	return pylist;
}