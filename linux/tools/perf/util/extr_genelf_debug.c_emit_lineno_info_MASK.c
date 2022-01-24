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
typedef  scalar_t__ ubyte ;
struct debug_entry {char* name; int lineno; unsigned long addr; } ;
struct buffer_ext {int dummy; } ;

/* Variables and functions */
 scalar_t__ DW_LNS_copy ; 
 struct debug_entry* FUNC0 (struct debug_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_ext*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_ext*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_ext*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_ext*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_ext*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_ext*,unsigned long) ; 
 scalar_t__ FUNC7 (struct debug_entry*,int,unsigned long) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

__attribute__((used)) static void FUNC9(struct buffer_ext *be,
			     struct debug_entry *ent, size_t nr_entry,
			     unsigned long code_addr)
{
	size_t i;

	/*
	 * Machine state at start of a statement program
	 * address = 0
	 * file    = 1
	 * line    = 1
	 * column  = 0
	 * is_stmt = default_is_stmt as given in the debug_line_header
	 * basic block = 0
	 * end sequence = 0
	 */

	/* start state of the state machine we take care of */
	unsigned long last_vma = code_addr;
	char const  *cur_filename = NULL;
	unsigned long cur_file_idx = 0;
	int last_line = 1;

	FUNC4(be, (void *)code_addr);

	for (i = 0; i < nr_entry; i++, ent = FUNC0(ent)) {
		int need_copy = 0;
		ubyte special_opcode;

		/*
		 * check if filename changed, if so add it
		 */
		if (!cur_filename || FUNC8(cur_filename, ent->name)) {
			FUNC3(be, ent->name);
			cur_filename = ent->name;
			FUNC6(be, ++cur_file_idx);
			need_copy = 1;
		}

		special_opcode = FUNC7(ent, last_line, last_vma);
		if (special_opcode != 0) {
			last_line = ent->lineno;
			last_vma  = ent->addr;
			FUNC5(be, special_opcode);
		} else {
			/*
			 * lines differ, emit line delta
			 */
			if (last_line != ent->lineno) {
				FUNC1(be, ent->lineno - last_line);
				last_line = ent->lineno;
				need_copy = 1;
			}
			/*
			 * addresses differ, emit address delta
			 */
			if (last_vma != ent->addr) {
				FUNC2(be, ent->addr - last_vma);
				last_vma = ent->addr;
				need_copy = 1;
			}
			/*
			 * add new row to matrix
			 */
			if (need_copy)
				FUNC5(be, DW_LNS_copy);
		}
	}
}