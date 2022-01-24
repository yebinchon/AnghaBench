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
struct srcpos {struct srcpos* file; int /*<<< orphan*/ * next; } ;
struct srcfile_state {struct srcfile_state* file; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct srcpos*,struct srcpos*,int) ; 
 struct srcpos* FUNC2 (int) ; 

struct srcpos *
FUNC3(struct srcpos *pos)
{
	struct srcpos *pos_new;
	struct srcfile_state *srcfile_state;

	if (!pos)
		return NULL;

	pos_new = FUNC2(sizeof(struct srcpos));
	FUNC0(pos->next == NULL);
	FUNC1(pos_new, pos, sizeof(struct srcpos));

	/* allocate without free */
	srcfile_state = FUNC2(sizeof(struct srcfile_state));
	FUNC1(srcfile_state, pos->file, sizeof(struct srcfile_state));
	pos_new->file = srcfile_state;

	return pos_new;
}