#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct srcpos {char* first_line; char* last_line; struct srcpos* next; int /*<<< orphan*/  last_column; int /*<<< orphan*/  first_column; TYPE_1__* file; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,...) ; 

__attribute__((used)) static char *
FUNC3(struct srcpos *pos, bool first_line, int level)
{
	char *pos_str, *fname, *first, *rest;
	bool fresh_fname = false;

	if (!pos) {
		if (level > 1) {
			FUNC2(&pos_str, "<no-file>:<no-line>");
			return pos_str;
		} else {
			return NULL;
		}
	}

	if (!pos->file)
		fname = "<no-file>";
	else if (!pos->file->name)
		fname = "<no-filename>";
	else if (level > 1)
		fname = pos->file->name;
	else {
		fname = FUNC1(pos->file->name);
		if (fname)
			fresh_fname = true;
		else
			fname = pos->file->name;
	}

	if (level > 1)
		FUNC2(&first, "%s:%d:%d-%d:%d", fname,
			  pos->first_line, pos->first_column,
			  pos->last_line, pos->last_column);
	else
		FUNC2(&first, "%s:%d", fname,
			  first_line ? pos->first_line : pos->last_line);

	if (fresh_fname)
		FUNC0(fname);

	if (pos->next != NULL) {
		rest = FUNC3(pos->next, first_line, level);
		FUNC2(&pos_str, "%s, %s", first, rest);
		FUNC0(first);
		FUNC0(rest);
	} else {
		pos_str = first;
	}

	return pos_str;
}