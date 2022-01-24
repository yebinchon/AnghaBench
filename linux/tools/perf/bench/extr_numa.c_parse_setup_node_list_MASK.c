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
struct thread_data {int bind_node; } ;
struct TYPE_3__ {int nr_tasks; int nr_nodes; int /*<<< orphan*/  node_list_str; } ;
struct TYPE_4__ {TYPE_1__ p; struct thread_data* threads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_2__* g ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (char**,char*) ; 
 char* FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static int FUNC10(void)
{
	struct thread_data *td;
	char *str0, *str;
	int t;

	if (!g->p.node_list_str)
		return 0;

	FUNC2("g->p.nr_tasks: %d\n", g->p.nr_tasks);

	str0 = str = FUNC6(g->p.node_list_str);
	t = 0;

	FUNC0(!str);

	FUNC9("# binding tasks to NODEs:\n");
	FUNC9("# ");

	while (true) {
		int bind_node, bind_node_0, bind_node_1;
		char *tok, *tok_end, *tok_step, *tok_mul;
		int step;
		int mul;

		tok = FUNC7(&str, ",");
		if (!tok)
			break;

		tok_end = FUNC8(tok, "-");

		FUNC2("\ntoken: {%s}, end: {%s}\n", tok, tok_end);
		if (!tok_end) {
			/* Single NODE specified: */
			bind_node_0 = bind_node_1 = FUNC1(tok);
		} else {
			/* NODE range specified (for example: "5-11"): */
			bind_node_0 = FUNC1(tok);
			bind_node_1 = FUNC1(tok_end + 1);
		}

		step = 1;
		tok_step = FUNC8(tok, "#");
		if (tok_step) {
			step = FUNC1(tok_step + 1);
			FUNC0(step <= 0 || step >= g->p.nr_nodes);
		}

		/* Multiplicator shortcut, "0x8" is a shortcut for: "0,0,0,0,0,0,0,0" */
		mul = 1;
		tok_mul = FUNC8(tok, "x");
		if (tok_mul) {
			mul = FUNC1(tok_mul + 1);
			FUNC0(mul <= 0);
		}

		FUNC2("NODEs: %d-%d #%d\n", bind_node_0, bind_node_1, step);

		if (bind_node_0 >= g->p.nr_nodes || bind_node_1 >= g->p.nr_nodes) {
			FUNC5("\nTest not applicable, system has only %d nodes.\n", g->p.nr_nodes);
			return -1;
		}

		FUNC0(bind_node_0 < 0 || bind_node_1 < 0);
		FUNC0(bind_node_0 > bind_node_1);

		for (bind_node = bind_node_0; bind_node <= bind_node_1; bind_node += step) {
			int i;

			for (i = 0; i < mul; i++) {
				if (t >= g->p.nr_tasks || !FUNC4(bind_node)) {
					FUNC5("\n# NOTE: ignoring bind NODEs starting at NODE#%d\n", bind_node);
					goto out;
				}
				td = g->threads + t;

				if (!t)
					FUNC9(" %2d", bind_node);
				else
					FUNC9(",%2d", bind_node);

				td->bind_node = bind_node;
				t++;
			}
		}
	}
out:

	FUNC9("\n");

	if (t < g->p.nr_tasks)
		FUNC5("# NOTE: %d tasks mem-bound, %d tasks unbound\n", t, g->p.nr_tasks - t);

	FUNC3(str0);
	return 0;
}