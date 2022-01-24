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
typedef  int /*<<< orphan*/  u64 ;
struct dso {char* long_name; int /*<<< orphan*/ * dwfl; } ;
typedef  int /*<<< orphan*/  Dwfl_Module ;
typedef  int /*<<< orphan*/  Dwfl ;
typedef  int /*<<< orphan*/  Dwarf_Frame ;
typedef  int /*<<< orphan*/  Dwarf_Addr ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char const*,char const*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  offline_callbacks ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct dso *dso, u64 map_start, Dwarf_Addr pc)
{
	int		rc = -1;
	Dwfl		*dwfl;
	Dwfl_Module	*mod;
	Dwarf_Frame	*frame;
	int		ra_regno;
	Dwarf_Addr	start = pc;
	Dwarf_Addr	end = pc;
	bool		signalp;
	const char	*exec_file = dso->long_name;

	dwfl = dso->dwfl;

	if (!dwfl) {
		dwfl = FUNC4(&offline_callbacks);
		if (!dwfl) {
			FUNC9("dwfl_begin() failed: %s\n", FUNC1(-1));
			return -1;
		}

		mod = FUNC6(dwfl, exec_file, exec_file, -1,
						map_start, false);
		if (!mod) {
			FUNC9("dwfl_report_elf() failed %s\n",
						FUNC1(-1));
			/*
			 * We normally cache the DWARF debug info and never
			 * call dwfl_end(). But to prevent fd leak, free in
			 * case of error.
			 */
			FUNC5(dwfl);
			goto out;
		}
		dso->dwfl = dwfl;
	}

	mod = FUNC3(dwfl, pc);
	if (!mod) {
		FUNC9("dwfl_addrmodule() failed, %s\n", FUNC1(-1));
		goto out;
	}

	/*
	 * To work with split debug info files (eg: glibc), check both
	 * .eh_frame and .debug_frame sections of the ELF header.
	 */
	frame = FUNC8(mod, pc);
	if (!frame) {
		frame = FUNC7(mod, pc);
		if (!frame)
			goto out;
	}

	ra_regno = FUNC2(frame, &start, &end, &signalp);
	if (ra_regno < 0) {
		FUNC9("Return address register unavailable: %s\n",
				FUNC1(-1));
		goto out;
	}

	rc = FUNC0(ra_regno, frame);

out:
	return rc;
}