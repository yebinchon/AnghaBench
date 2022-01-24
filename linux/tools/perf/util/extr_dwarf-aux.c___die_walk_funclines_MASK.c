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
struct __line_walk_param {int recursive; scalar_t__ (* callback ) (char const*,int,int /*<<< orphan*/ ,void*) ;void* data; scalar_t__ retval; } ;
typedef  scalar_t__ (* line_walk_callback_t ) (char const*,int,int /*<<< orphan*/ ,void*) ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  int /*<<< orphan*/  Dwarf_Addr ;

/* Variables and functions */
 int /*<<< orphan*/  __die_walk_funclines_cb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct __line_walk_param*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(Dwarf_Die *sp_die, bool recursive,
				line_walk_callback_t callback, void *data)
{
	struct __line_walk_param lw = {
		.recursive = recursive,
		.callback = callback,
		.data = data,
		.retval = 0,
	};
	Dwarf_Die die_mem;
	Dwarf_Addr addr;
	const char *fname;
	int lineno;

	/* Handle function declaration line */
	fname = FUNC1(sp_die);
	if (fname && FUNC2(sp_die, &lineno) == 0 &&
	    FUNC3(sp_die, &addr) == 0) {
		lw.retval = callback(fname, lineno, addr, data);
		if (lw.retval != 0)
			goto done;
	}
	FUNC0(sp_die, __die_walk_funclines_cb, &lw, &die_mem);
done:
	return lw.retval;
}