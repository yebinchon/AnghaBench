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
typedef  int /*<<< orphan*/  u64 ;
struct symbol_name_rb_node {int dummy; } ;
struct symbol {int dummy; } ;
struct perf_env {int dummy; } ;
struct TYPE_2__ {int initialized; int priv_size; char* field_sep; char* symfs; int /*<<< orphan*/  dso_list; int /*<<< orphan*/  comm_list; int /*<<< orphan*/  pid_list; int /*<<< orphan*/  tid_list; int /*<<< orphan*/  sym_list; int /*<<< orphan*/  kptr_restrict; int /*<<< orphan*/  bt_stop_list_str; int /*<<< orphan*/  bt_stop_list; int /*<<< orphan*/  sym_list_str; int /*<<< orphan*/  tid_list_str; int /*<<< orphan*/  pid_list_str; int /*<<< orphan*/  comm_list_str; int /*<<< orphan*/  dso_list_str; scalar_t__ try_vmlinux_path; scalar_t__ sort_by_name; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_1__ symbol_conf ; 
 scalar_t__ FUNC11 (struct perf_env*) ; 

int FUNC12(struct perf_env *env)
{
	const char *symfs;

	if (symbol_conf.initialized)
		return 0;

	symbol_conf.priv_size = FUNC0(symbol_conf.priv_size, sizeof(u64));

	FUNC9();

	if (symbol_conf.sort_by_name)
		symbol_conf.priv_size += (sizeof(struct symbol_name_rb_node) -
					  sizeof(struct symbol));

	if (symbol_conf.try_vmlinux_path && FUNC11(env) < 0)
		return -1;

	if (symbol_conf.field_sep && *symbol_conf.field_sep == '.') {
		FUNC3("'.' is the only non valid --field-separator argument\n");
		return -1;
	}

	if (FUNC6(&symbol_conf.dso_list,
		       symbol_conf.dso_list_str, "dso") < 0)
		return -1;

	if (FUNC6(&symbol_conf.comm_list,
		       symbol_conf.comm_list_str, "comm") < 0)
		goto out_free_dso_list;

	if (FUNC5(&symbol_conf.pid_list,
		       symbol_conf.pid_list_str, "pid") < 0)
		goto out_free_comm_list;

	if (FUNC5(&symbol_conf.tid_list,
		       symbol_conf.tid_list_str, "tid") < 0)
		goto out_free_pid_list;

	if (FUNC6(&symbol_conf.sym_list,
		       symbol_conf.sym_list_str, "symbol") < 0)
		goto out_free_tid_list;

	if (FUNC6(&symbol_conf.bt_stop_list,
		       symbol_conf.bt_stop_list_str, "symbol") < 0)
		goto out_free_sym_list;

	/*
	 * A path to symbols of "/" is identical to ""
	 * reset here for simplicity.
	 */
	symfs = FUNC4(symbol_conf.symfs, NULL);
	if (symfs == NULL)
		symfs = symbol_conf.symfs;
	if (FUNC7(symfs, "/") == 0)
		symbol_conf.symfs = "";
	if (symfs != symbol_conf.symfs)
		FUNC1((void *)symfs);

	symbol_conf.kptr_restrict = FUNC10();

	symbol_conf.initialized = true;
	return 0;

out_free_sym_list:
	FUNC8(symbol_conf.sym_list);
out_free_tid_list:
	FUNC2(symbol_conf.tid_list);
out_free_pid_list:
	FUNC2(symbol_conf.pid_list);
out_free_comm_list:
	FUNC8(symbol_conf.comm_list);
out_free_dso_list:
	FUNC8(symbol_conf.dso_list);
	return -1;
}