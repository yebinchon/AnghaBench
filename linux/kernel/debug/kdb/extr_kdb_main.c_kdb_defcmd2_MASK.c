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
struct defcmd_set {char** command; int count; int usable; int /*<<< orphan*/  help; int /*<<< orphan*/  usage; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KDB ; 
 int /*<<< orphan*/  KDB_ENABLE_ALWAYS_SAFE ; 
 int KDB_NOTIMP ; 
 int defcmd_in_progress ; 
 struct defcmd_set* defcmd_set ; 
 int defcmd_set_count ; 
 char** FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kdb_exec_defcmd ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (char**,char**,int) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static int FUNC7(const char *cmdstr, const char *argv0)
{
	struct defcmd_set *s = defcmd_set + defcmd_set_count - 1;
	char **save_command = s->command;
	if (FUNC6(argv0, "endefcmd") == 0) {
		defcmd_in_progress = false;
		if (!s->count)
			s->usable = false;
		if (s->usable)
			/* macros are always safe because when executed each
			 * internal command re-enters kdb_parse() and is
			 * safety checked individually.
			 */
			FUNC2(s->name, kdb_exec_defcmd, s->usage,
					   s->help, 0,
					   KDB_ENABLE_ALWAYS_SAFE);
		return 0;
	}
	if (!s->usable)
		return KDB_NOTIMP;
	s->command = FUNC0(s->count + 1, sizeof(*(s->command)), GFP_KDB);
	if (!s->command) {
		FUNC1("Could not allocate new kdb_defcmd table for %s\n",
			   cmdstr);
		s->usable = false;
		return KDB_NOTIMP;
	}
	FUNC5(s->command, save_command, s->count * sizeof(*(s->command)));
	s->command[s->count++] = FUNC3(cmdstr, GFP_KDB);
	FUNC4(save_command);
	return 0;
}