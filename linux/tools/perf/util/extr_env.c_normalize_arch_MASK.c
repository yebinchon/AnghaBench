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

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static const char *FUNC3(char *arch)
{
	if (!FUNC1(arch, "x86_64"))
		return "x86";
	if (arch[0] == 'i' && arch[2] == '8' && arch[3] == '6')
		return "x86";
	if (!FUNC1(arch, "sun4u") || !FUNC2(arch, "sparc", 5))
		return "sparc";
	if (!FUNC1(arch, "aarch64") || !FUNC1(arch, "arm64"))
		return "arm64";
	if (!FUNC2(arch, "arm", 3) || !FUNC1(arch, "sa110"))
		return "arm";
	if (!FUNC2(arch, "s390", 4))
		return "s390";
	if (!FUNC2(arch, "parisc", 6))
		return "parisc";
	if (!FUNC2(arch, "powerpc", 7) || !FUNC2(arch, "ppc", 3))
		return "powerpc";
	if (!FUNC2(arch, "mips", 4))
		return "mips";
	if (!FUNC2(arch, "sh", 2) && FUNC0(arch[2]))
		return "sh";

	return arch;
}