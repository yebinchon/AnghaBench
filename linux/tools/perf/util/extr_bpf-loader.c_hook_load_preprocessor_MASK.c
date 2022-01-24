#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct probe_trace_event {scalar_t__ nargs; } ;
struct perf_probe_event {int ntevs; struct probe_trace_event* tevs; } ;
struct bpf_program {int dummy; } ;
struct bpf_prog_priv {int need_prologue; int /*<<< orphan*/  nr_types; void* type_mapping; void* insns_buf; struct perf_probe_event pev; scalar_t__ is_tp; } ;
struct bpf_insn {int dummy; } ;

/* Variables and functions */
 int BPF_LOADER_ERRNO__INTERNAL ; 
 int BPF_MAXINSNS ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct bpf_prog_priv*) ; 
 struct bpf_prog_priv* FUNC1 (struct bpf_program*) ; 
 int FUNC2 (struct bpf_program*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int FUNC4 (struct perf_probe_event*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  preproc_gen_prologue ; 

__attribute__((used)) static int FUNC7(struct bpf_program *prog)
{
	struct bpf_prog_priv *priv = FUNC1(prog);
	struct perf_probe_event *pev;
	bool need_prologue = false;
	int err, i;

	if (FUNC0(priv) || !priv) {
		FUNC6("Internal error when hook preprocessor\n");
		return -BPF_LOADER_ERRNO__INTERNAL;
	}

	if (priv->is_tp) {
		priv->need_prologue = false;
		return 0;
	}

	pev = &priv->pev;
	for (i = 0; i < pev->ntevs; i++) {
		struct probe_trace_event *tev = &pev->tevs[i];

		if (tev->nargs > 0) {
			need_prologue = true;
			break;
		}
	}

	/*
	 * Since all tevs don't have argument, we don't need generate
	 * prologue.
	 */
	if (!need_prologue) {
		priv->need_prologue = false;
		return 0;
	}

	priv->need_prologue = true;
	priv->insns_buf = FUNC3(sizeof(struct bpf_insn) * BPF_MAXINSNS);
	if (!priv->insns_buf) {
		FUNC6("Not enough memory: alloc insns_buf failed\n");
		return -ENOMEM;
	}

	priv->type_mapping = FUNC3(sizeof(int) * pev->ntevs);
	if (!priv->type_mapping) {
		FUNC6("Not enough memory: alloc type_mapping failed\n");
		return -ENOMEM;
	}
	FUNC5(priv->type_mapping, -1,
	       sizeof(int) * pev->ntevs);

	err = FUNC4(pev, priv->type_mapping, &priv->nr_types);
	if (err)
		return err;

	err = FUNC2(prog, priv->nr_types,
				    preproc_gen_prologue);
	return err;
}