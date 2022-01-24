#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_6__ {int /*<<< orphan*/ * cpr; TYPE_3__* crp; } ;
struct tables {int db_export_mode; int /*<<< orphan*/  synth_handler; TYPE_2__ dbe; } ;
struct TYPE_7__ {int /*<<< orphan*/ * cpr; } ;
struct TYPE_5__ {int priv_size; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  branch_type ; 
 int /*<<< orphan*/  call_path ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  call_return ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  comm ; 
 int /*<<< orphan*/  comm_thread ; 
 int /*<<< orphan*/  context_switch ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  dso ; 
 int /*<<< orphan*/  evsel ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  machine ; 
 int /*<<< orphan*/  main_dict ; 
 int /*<<< orphan*/  FUNC9 (struct tables*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  python_process_call_return ; 
 int /*<<< orphan*/  sample ; 
 int /*<<< orphan*/  symbol ; 
 TYPE_1__ symbol_conf ; 
 int /*<<< orphan*/  thread ; 

__attribute__((used)) static void FUNC10(struct tables *tables)
{
	const char *perf_db_export_mode = "perf_db_export_mode";
	const char *perf_db_export_calls = "perf_db_export_calls";
	const char *perf_db_export_callchains = "perf_db_export_callchains";
	PyObject *db_export_mode, *db_export_calls, *db_export_callchains;
	bool export_calls = false;
	bool export_callchains = false;
	int ret;

	FUNC9(tables, 0, sizeof(struct tables));
	if (FUNC6(&tables->dbe))
		FUNC2("failed to initialize export");

	db_export_mode = FUNC0(main_dict, perf_db_export_mode);
	if (!db_export_mode)
		return;

	ret = FUNC1(db_export_mode);
	if (ret == -1)
		FUNC8(perf_db_export_mode);
	if (!ret)
		return;

	/* handle export calls */
	tables->dbe.crp = NULL;
	db_export_calls = FUNC0(main_dict, perf_db_export_calls);
	if (db_export_calls) {
		ret = FUNC1(db_export_calls);
		if (ret == -1)
			FUNC8(perf_db_export_calls);
		export_calls = !!ret;
	}

	if (export_calls) {
		tables->dbe.crp =
			FUNC5(python_process_call_return,
						   &tables->dbe);
		if (!tables->dbe.crp)
			FUNC2("failed to create calls processor");
	}

	/* handle export callchains */
	tables->dbe.cpr = NULL;
	db_export_callchains = FUNC0(main_dict,
						    perf_db_export_callchains);
	if (db_export_callchains) {
		ret = FUNC1(db_export_callchains);
		if (ret == -1)
			FUNC8(perf_db_export_callchains);
		export_callchains = !!ret;
	}

	if (export_callchains) {
		/*
		 * Attempt to use the call path root from the call return
		 * processor, if the call return processor is in use. Otherwise,
		 * we allocate a new call path root. This prevents exporting
		 * duplicate call path ids when both are in use simultaniously.
		 */
		if (tables->dbe.crp)
			tables->dbe.cpr = tables->dbe.crp->cpr;
		else
			tables->dbe.cpr = FUNC4();

		if (!tables->dbe.cpr)
			FUNC2("failed to create call path root");
	}

	tables->db_export_mode = true;
	/*
	 * Reserve per symbol space for symbol->db_id via symbol__priv()
	 */
	symbol_conf.priv_size = sizeof(u64);

	FUNC3(evsel);
	FUNC3(machine);
	FUNC3(thread);
	FUNC3(comm);
	FUNC3(comm_thread);
	FUNC3(dso);
	FUNC3(symbol);
	FUNC3(branch_type);
	FUNC3(sample);
	FUNC3(call_path);
	FUNC3(call_return);
	FUNC3(context_switch);

	/*
	 * Synthesized events are samples but with architecture-specific data
	 * stored in sample->raw_data. They are exported via
	 * python_export_sample() and consequently do not need a separate export
	 * callback.
	 */
	tables->synth_handler = FUNC7("synth_data");
}