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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct tomoyo_page_dump {char* data; } ;
struct tomoyo_execve {char* tmp; struct tomoyo_page_dump dump; struct linux_binprm* bprm; } ;
struct tomoyo_envp {scalar_t__ is_not; scalar_t__ value; } ;
struct tomoyo_argv {scalar_t__ is_not; } ;
struct linux_binprm {unsigned long p; int argc; int envc; } ;
typedef  int /*<<< orphan*/  local_checked ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 unsigned long PAGE_SIZE ; 
 int TOMOYO_EXEC_TMPSIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__* FUNC1 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int const,struct tomoyo_argv const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct linux_binprm*,unsigned long,struct tomoyo_page_dump*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int const,struct tomoyo_envp const*,scalar_t__*) ; 

__attribute__((used)) static bool FUNC7(struct tomoyo_execve *ee,
			     const u16 argc, const struct tomoyo_argv *argv,
			     const u16 envc, const struct tomoyo_envp *envp)
{
	struct linux_binprm *bprm = ee->bprm;
	struct tomoyo_page_dump *dump = &ee->dump;
	char *arg_ptr = ee->tmp;
	int arg_len = 0;
	unsigned long pos = bprm->p;
	int offset = pos % PAGE_SIZE;
	int argv_count = bprm->argc;
	int envp_count = bprm->envc;
	bool result = true;
	u8 local_checked[32];
	u8 *checked;

	if (argc + envc <= sizeof(local_checked)) {
		checked = local_checked;
		FUNC2(local_checked, 0, sizeof(local_checked));
	} else {
		checked = FUNC1(argc + envc, GFP_NOFS);
		if (!checked)
			return false;
	}
	while (argv_count || envp_count) {
		if (!FUNC5(bprm, pos, dump)) {
			result = false;
			goto out;
		}
		pos += PAGE_SIZE - offset;
		while (offset < PAGE_SIZE) {
			/* Read. */
			const char *kaddr = dump->data;
			const unsigned char c = kaddr[offset++];

			if (c && arg_len < TOMOYO_EXEC_TMPSIZE - 10) {
				if (c == '\\') {
					arg_ptr[arg_len++] = '\\';
					arg_ptr[arg_len++] = '\\';
				} else if (c > ' ' && c < 127) {
					arg_ptr[arg_len++] = c;
				} else {
					arg_ptr[arg_len++] = '\\';
					arg_ptr[arg_len++] = (c >> 6) + '0';
					arg_ptr[arg_len++] =
						((c >> 3) & 7) + '0';
					arg_ptr[arg_len++] = (c & 7) + '0';
				}
			} else {
				arg_ptr[arg_len] = '\0';
			}
			if (c)
				continue;
			/* Check. */
			if (argv_count) {
				if (!FUNC4(bprm->argc - argv_count,
						 arg_ptr, argc, argv,
						 checked)) {
					result = false;
					break;
				}
				argv_count--;
			} else if (envp_count) {
				char *cp = FUNC3(arg_ptr, '=');

				if (cp) {
					*cp = '\0';
					if (!FUNC6(arg_ptr, cp + 1,
							 envc, envp,
							 checked + argc)) {
						result = false;
						break;
					}
				}
				envp_count--;
			} else {
				break;
			}
			arg_len = 0;
		}
		offset = 0;
		if (!result)
			break;
	}
out:
	if (result) {
		int i;

		/* Check not-yet-checked entries. */
		for (i = 0; i < argc; i++) {
			if (checked[i])
				continue;
			/*
			 * Return true only if all unchecked indexes in
			 * bprm->argv[] are not matched.
			 */
			if (argv[i].is_not)
				continue;
			result = false;
			break;
		}
		for (i = 0; i < envc; envp++, i++) {
			if (checked[argc + i])
				continue;
			/*
			 * Return true only if all unchecked environ variables
			 * in bprm->envp[] are either undefined or not matched.
			 */
			if ((!envp->value && !envp->is_not) ||
			    (envp->value && envp->is_not))
				continue;
			result = false;
			break;
		}
	}
	if (checked != local_checked)
		FUNC0(checked);
	return result;
}