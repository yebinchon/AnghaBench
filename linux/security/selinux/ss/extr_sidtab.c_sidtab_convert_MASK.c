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
typedef  size_t u32 ;
struct sidtab_convert_params {TYPE_1__* target; } ;
struct sidtab {size_t count; int /*<<< orphan*/  lock; struct sidtab_convert_params* convert; int /*<<< orphan*/ * roots; } ;
struct TYPE_2__ {size_t count; int /*<<< orphan*/ * roots; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,size_t,size_t,struct sidtab_convert_params*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,size_t,int) ; 
 size_t FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct sidtab *s, struct sidtab_convert_params *params)
{
	unsigned long flags;
	u32 count, level, pos;
	int rc;

	FUNC4(&s->lock, flags);

	/* concurrent policy loads are not allowed */
	if (s->convert) {
		FUNC5(&s->lock, flags);
		return -EBUSY;
	}

	count = s->count;
	level = FUNC3(count);

	/* allocate last leaf in the new sidtab (to avoid race with
	 * live convert)
	 */
	rc = FUNC2(params->target, count - 1, 1) ? 0 : -ENOMEM;
	if (rc) {
		FUNC5(&s->lock, flags);
		return rc;
	}

	/* set count in case no new entries are added during conversion */
	params->target->count = count;

	/* enable live convert of new entries */
	s->convert = params;

	/* we can safely do the rest of the conversion outside the lock */
	FUNC5(&s->lock, flags);

	FUNC0("SELinux:  Converting %u SID table entries...\n", count);

	/* convert all entries not covered by live convert */
	pos = 0;
	rc = FUNC1(&params->target->roots[level],
				 &s->roots[level], &pos, count, level, params);
	if (rc) {
		/* we need to keep the old table - disable live convert */
		FUNC4(&s->lock, flags);
		s->convert = NULL;
		FUNC5(&s->lock, flags);
	}
	return rc;
}