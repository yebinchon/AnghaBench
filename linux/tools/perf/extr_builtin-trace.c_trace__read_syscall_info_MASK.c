#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tp_name ;
struct TYPE_10__ {int /*<<< orphan*/ * table; } ;
struct trace {TYPE_2__ syscalls; TYPE_5__* sctbl; } ;
struct syscall {int nonexistent; char const* name; int is_exit; int is_open; int /*<<< orphan*/  nr_args; TYPE_4__* args; TYPE_7__* tp_format; TYPE_6__* fmt; } ;
struct TYPE_11__ {int nr_fields; TYPE_4__* fields; } ;
struct TYPE_15__ {TYPE_3__ format; } ;
struct TYPE_14__ {char const* alias; } ;
struct TYPE_9__ {scalar_t__ max_id; } ;
struct TYPE_13__ {TYPE_1__ syscalls; } ;
struct TYPE_12__ {char const* name; struct TYPE_12__* next; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (TYPE_7__*) ; 
 int FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (struct syscall*,int) ; 
 int FUNC6 (struct syscall*) ; 
 TYPE_6__* FUNC7 (char const*) ; 
 char* FUNC8 (TYPE_5__*,int) ; 
 void* FUNC9 (char*,char*) ; 

__attribute__((used)) static int FUNC10(struct trace *trace, int id)
{
	char tp_name[128];
	struct syscall *sc;
	const char *name = FUNC8(trace->sctbl, id);

	if (trace->syscalls.table == NULL) {
		trace->syscalls.table = FUNC2(trace->sctbl->syscalls.max_id + 1, sizeof(*sc));
		if (trace->syscalls.table == NULL)
			return -ENOMEM;
	}

	sc = trace->syscalls.table + id;
	if (sc->nonexistent)
		return 0;

	if (name == NULL) {
		sc->nonexistent = true;
		return 0;
	}

	sc->name = name;
	sc->fmt  = FUNC7(sc->name);

	FUNC3(tp_name, sizeof(tp_name), "sys_enter_%s", sc->name);
	sc->tp_format = FUNC9("syscalls", tp_name);

	if (FUNC0(sc->tp_format) && sc->fmt && sc->fmt->alias) {
		FUNC3(tp_name, sizeof(tp_name), "sys_enter_%s", sc->fmt->alias);
		sc->tp_format = FUNC9("syscalls", tp_name);
	}

	if (FUNC5(sc, FUNC0(sc->tp_format) ? 6 : sc->tp_format->format.nr_fields))
		return -ENOMEM;

	if (FUNC0(sc->tp_format))
		return FUNC1(sc->tp_format);

	sc->args = sc->tp_format->format.fields;
	/*
	 * We need to check and discard the first variable '__syscall_nr'
	 * or 'nr' that mean the syscall number. It is needless here.
	 * So drop '__syscall_nr' or 'nr' field but does not exist on older kernels.
	 */
	if (sc->args && (!FUNC4(sc->args->name, "__syscall_nr") || !FUNC4(sc->args->name, "nr"))) {
		sc->args = sc->args->next;
		--sc->nr_args;
	}

	sc->is_exit = !FUNC4(name, "exit_group") || !FUNC4(name, "exit");
	sc->is_open = !FUNC4(name, "open") || !FUNC4(name, "openat");

	return FUNC6(sc);
}