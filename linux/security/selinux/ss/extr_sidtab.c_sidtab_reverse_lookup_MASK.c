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
typedef  size_t u32 ;
struct sidtab_convert_params {int (* func ) (struct context*,struct context*,int /*<<< orphan*/ ) ;struct sidtab* target; int /*<<< orphan*/  args; } ;
struct sidtab {size_t count; int /*<<< orphan*/  lock; struct sidtab_convert_params* convert; int /*<<< orphan*/ * roots; } ;
struct context {int /*<<< orphan*/  str; scalar_t__ len; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOVERFLOW ; 
 size_t SIDTAB_MAX ; 
 scalar_t__ FUNC0 (struct context*,struct context*) ; 
 int FUNC1 (struct context*,struct context*) ; 
 int /*<<< orphan*/  FUNC2 (struct context*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 struct context* FUNC4 (struct sidtab*,size_t,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,size_t*,size_t,size_t,struct context*,size_t*) ; 
 size_t FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct sidtab*,size_t) ; 
 int FUNC8 (struct sidtab*,struct context*,size_t*) ; 
 size_t FUNC9 (size_t*) ; 
 int /*<<< orphan*/  FUNC10 (size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC13 (struct context*,struct context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct sidtab *s, struct context *context,
				 u32 *index)
{
	unsigned long flags;
	u32 count, count_locked, level, pos;
	struct sidtab_convert_params *convert;
	struct context *dst, *dst_convert;
	int rc;

	rc = FUNC8(s, context, index);
	if (rc == 0)
		return 0;

	/* read entries only after reading count */
	count = FUNC9(&s->count);
	level = FUNC6(count);

	pos = 0;
	rc = FUNC5(s->roots[level], &pos, count, level,
				 context, index);
	if (rc == 0) {
		FUNC7(s, *index);
		return 0;
	}

	/* lock-free search failed: lock, re-search, and insert if not found */
	FUNC11(&s->lock, flags);

	convert = s->convert;
	count_locked = s->count;
	level = FUNC6(count_locked);

	/* if count has changed before we acquired the lock, then catch up */
	while (count < count_locked) {
		if (FUNC0(FUNC4(s, count, 0), context)) {
			FUNC7(s, count);
			*index = count;
			rc = 0;
			goto out_unlock;
		}
		++count;
	}

	/* bail out if we already reached max entries */
	rc = -EOVERFLOW;
	if (count >= SIDTAB_MAX)
		goto out_unlock;

	/* insert context into new entry */
	rc = -ENOMEM;
	dst = FUNC4(s, count, 1);
	if (!dst)
		goto out_unlock;

	rc = FUNC1(dst, context);
	if (rc)
		goto out_unlock;

	/*
	 * if we are building a new sidtab, we need to convert the context
	 * and insert it there as well
	 */
	if (convert) {
		rc = -ENOMEM;
		dst_convert = FUNC4(convert->target, count, 1);
		if (!dst_convert) {
			FUNC2(dst);
			goto out_unlock;
		}

		rc = convert->func(context, dst_convert, convert->args);
		if (rc) {
			FUNC2(dst);
			goto out_unlock;
		}

		/* at this point we know the insert won't fail */
		convert->target->count = count + 1;
	}

	if (context->len)
		FUNC3("SELinux:  Context %s is not valid (left unmapped).\n",
			context->str);

	FUNC7(s, count);
	*index = count;

	/* write entries before writing new count */
	FUNC10(&s->count, count + 1);

	rc = 0;
out_unlock:
	FUNC12(&s->lock, flags);
	return rc;
}