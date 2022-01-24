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
struct arch {int family; int model; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static bool FUNC1(struct arch *arch, const char *ins1,
			      const char *ins2)
{
	if (arch->family != 6 || arch->model < 0x1e || FUNC0(ins2, "jmp"))
		return false;

	if (arch->model == 0x1e) {
		/* Nehalem */
		if ((FUNC0(ins1, "cmp") && !FUNC0(ins1, "xchg")) ||
		     FUNC0(ins1, "test")) {
			return true;
		}
	} else {
		/* Newer platform */
		if ((FUNC0(ins1, "cmp") && !FUNC0(ins1, "xchg")) ||
		     FUNC0(ins1, "test") ||
		     FUNC0(ins1, "add") ||
		     FUNC0(ins1, "sub") ||
		     FUNC0(ins1, "and") ||
		     FUNC0(ins1, "inc") ||
		     FUNC0(ins1, "dec")) {
			return true;
		}
	}

	return false;
}