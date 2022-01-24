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
struct utsname {char* machine; } ;
struct perf_env {char* arch; } ;

/* Variables and functions */
 char const* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct utsname*) ; 

const char *FUNC2(struct perf_env *env)
{
	struct utsname uts;
	char *arch_name;

	if (!env || !env->arch) { /* Assume local operation */
		if (FUNC1(&uts) < 0)
			return NULL;
		arch_name = uts.machine;
	} else
		arch_name = env->arch;

	return FUNC0(arch_name);
}