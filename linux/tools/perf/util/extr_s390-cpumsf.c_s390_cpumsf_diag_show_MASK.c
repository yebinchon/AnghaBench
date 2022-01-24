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
struct hws_diag_entry {scalar_t__ def; unsigned long long I; } ;

/* Variables and functions */
 scalar_t__ S390_CPUMSF_DIAG_DEF_FIRST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 unsigned long long FUNC1 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,char*,size_t,scalar_t__,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static bool FUNC4(const char *color, size_t pos,
				  struct hws_diag_entry *diagp)
{
	struct hws_diag_entry *diag = diagp;
#if __BYTE_ORDER == __LITTLE_ENDIAN
	struct hws_diag_entry local;
	unsigned long long word = FUNC1(*(unsigned long long *)diagp);

	local.def = FUNC0(diagp->def);
	local.I = word >> 32 & 0x1;
	diag = &local;
#endif
	if (diag->def < S390_CPUMSF_DIAG_DEF_FIRST) {
		FUNC3("Invalid AUX trace diagnostic entry [%#08zx]\n", pos);
		return false;
	}
	FUNC2(stdout, color, "    [%#08zx] Diag    Def:%04x %c\n",
		      pos, diag->def, diag->I ? 'I' : ' ');
	return true;
}