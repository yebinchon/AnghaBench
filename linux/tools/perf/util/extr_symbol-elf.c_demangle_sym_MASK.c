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
struct dso {scalar_t__ kernel; } ;

/* Variables and functions */
 int DMGL_ANSI ; 
 int DMGL_NO_OPTS ; 
 int DMGL_PARAMS ; 
 int /*<<< orphan*/  JAVA_DEMANGLE_NORET ; 
 char* FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static char *FUNC5(struct dso *dso, int kmodule, const char *elf_name)
{
	int demangle_flags = verbose > 0 ? (DMGL_PARAMS | DMGL_ANSI) : DMGL_NO_OPTS;
	char *demangled = NULL;

	/*
	 * We need to figure out if the object was created from C++ sources
	 * DWARF DW_compile_unit has this, but we don't always have access
	 * to it...
	 */
	if (!FUNC4(dso->kernel || kmodule))
	    return demangled;

	demangled = FUNC0(NULL, elf_name, demangle_flags);
	if (demangled == NULL)
		demangled = FUNC1(elf_name, JAVA_DEMANGLE_NORET);
	else if (FUNC3(demangled))
		/*
		    * Input to Rust demangling is the BFD-demangled
		    * name which it Rust-demangles in place.
		    */
		FUNC2(demangled);

	return demangled;
}