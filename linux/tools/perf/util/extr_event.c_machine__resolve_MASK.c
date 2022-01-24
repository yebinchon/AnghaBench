#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct thread {int /*<<< orphan*/  tid; } ;
struct perf_sample {scalar_t__ cpu; int /*<<< orphan*/  ip; int /*<<< orphan*/  cpumode; int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; } ;
struct perf_env {TYPE_1__* cpu; } ;
struct machine {struct perf_env* env; } ;
struct dso {char* long_name; scalar_t__ short_name; } ;
struct addr_location {char level; int filtered; scalar_t__ cpu; int socket; TYPE_3__* sym; int /*<<< orphan*/  addr; TYPE_4__* map; int /*<<< orphan*/ * srcline; } ;
struct TYPE_8__ {struct dso* dso; } ;
struct TYPE_7__ {scalar_t__ name; } ;
struct TYPE_6__ {scalar_t__ sym_list; scalar_t__ dso_list; } ;
struct TYPE_5__ {int socket_id; } ;

/* Variables and functions */
 int HIST_FILTER__DSO ; 
 int HIST_FILTER__SYMBOL ; 
 int HIST_FILTER__THREAD ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 struct thread* FUNC1 (struct machine*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 TYPE_2__ symbol_conf ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct addr_location*) ; 
 scalar_t__ FUNC6 (struct thread*) ; 

int FUNC7(struct machine *machine, struct addr_location *al,
		     struct perf_sample *sample)
{
	struct thread *thread = FUNC1(machine, sample->pid,
							sample->tid);

	if (thread == NULL)
		return -1;

	FUNC0(" ... thread: %s:%d\n", FUNC4(thread), thread->tid);
	FUNC5(thread, sample->cpumode, sample->ip, al);
	FUNC0(" ...... dso: %s\n",
		    al->map ? al->map->dso->long_name :
			al->level == 'H' ? "[hypervisor]" : "<not found>");

	if (FUNC6(thread))
		al->filtered |= (1 << HIST_FILTER__THREAD);

	al->sym = NULL;
	al->cpu = sample->cpu;
	al->socket = -1;
	al->srcline = NULL;

	if (al->cpu >= 0) {
		struct perf_env *env = machine->env;

		if (env && env->cpu)
			al->socket = env->cpu[al->cpu].socket_id;
	}

	if (al->map) {
		struct dso *dso = al->map->dso;

		if (symbol_conf.dso_list &&
		    (!dso || !(FUNC3(symbol_conf.dso_list,
						  dso->short_name) ||
			       (dso->short_name != dso->long_name &&
				FUNC3(symbol_conf.dso_list,
						   dso->long_name))))) {
			al->filtered |= (1 << HIST_FILTER__DSO);
		}

		al->sym = FUNC2(al->map, al->addr);
	}

	if (symbol_conf.sym_list &&
		(!al->sym || !FUNC3(symbol_conf.sym_list,
						al->sym->name))) {
		al->filtered |= (1 << HIST_FILTER__SYMBOL);
	}

	return 0;
}