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
struct perf_probe_event {int /*<<< orphan*/  event; void* group; } ;
struct bpf_program {int dummy; } ;
struct bpf_prog_priv {int is_tp; void* evt_name; int /*<<< orphan*/  sys_name; struct perf_probe_event pev; } ;
struct TYPE_2__ {int no_inlines; int force_add; } ;

/* Variables and functions */
 int BPF_LOADER_ERRNO__EVENTNAME ; 
 int BPF_LOADER_ERRNO__GROUP ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (char const*) ; 
 char* PERF_BPF_PROBE_GROUP ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (struct bpf_program*,struct bpf_prog_priv*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct bpf_program*,int) ; 
 struct bpf_prog_priv* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_probe_event*) ; 
 int /*<<< orphan*/  clear_prog_priv ; 
 int /*<<< orphan*/  FUNC6 (struct bpf_prog_priv*) ; 
 int FUNC7 (char const*,char const**,int*,struct perf_probe_event*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 TYPE_1__ probe_conf ; 
 char* FUNC9 (char const*,char) ; 
 scalar_t__ FUNC10 (void*,char*) ; 
 void* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,int) ; 

__attribute__((used)) static int
FUNC13(struct bpf_program *prog)
{
	struct perf_probe_event *pev = NULL;
	struct bpf_prog_priv *priv = NULL;
	const char *config_str, *main_str;
	bool is_tp = false;
	int err;

	/* Initialize per-program probing setting */
	probe_conf.no_inlines = false;
	probe_conf.force_add = false;

	config_str = FUNC3(prog, false);
	if (FUNC0(config_str)) {
		FUNC8("bpf: unable to get title for program\n");
		return FUNC1(config_str);
	}

	priv = FUNC4(sizeof(*priv), 1);
	if (!priv) {
		FUNC8("bpf: failed to alloc priv\n");
		return -ENOMEM;
	}
	pev = &priv->pev;

	FUNC8("bpf: config program '%s'\n", config_str);
	err = FUNC7(config_str, &main_str, &is_tp, pev);
	if (err)
		goto errout;

	if (is_tp) {
		char *s = FUNC9(main_str, ':');

		priv->is_tp = true;
		priv->sys_name = FUNC12(main_str, s - main_str);
		priv->evt_name = FUNC11(s + 1);
		goto set_priv;
	}

	if (pev->group && FUNC10(pev->group, PERF_BPF_PROBE_GROUP)) {
		FUNC8("bpf: '%s': group for event is set and not '%s'.\n",
			 config_str, PERF_BPF_PROBE_GROUP);
		err = -BPF_LOADER_ERRNO__GROUP;
		goto errout;
	} else if (!pev->group)
		pev->group = FUNC11(PERF_BPF_PROBE_GROUP);

	if (!pev->group) {
		FUNC8("bpf: strdup failed\n");
		err = -ENOMEM;
		goto errout;
	}

	if (!pev->event) {
		FUNC8("bpf: '%s': event name is missing. Section name should be 'key=value'\n",
			 config_str);
		err = -BPF_LOADER_ERRNO__EVENTNAME;
		goto errout;
	}
	FUNC8("bpf: config '%s' is ok\n", config_str);

set_priv:
	err = FUNC2(prog, priv, clear_prog_priv);
	if (err) {
		FUNC8("Failed to set priv for program '%s'\n", config_str);
		goto errout;
	}

	return 0;

errout:
	if (pev)
		FUNC5(pev);
	FUNC6(priv);
	return err;
}