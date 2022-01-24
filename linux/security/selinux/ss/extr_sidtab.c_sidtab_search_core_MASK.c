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
typedef  scalar_t__ u32 ;
struct sidtab {int dummy; } ;
struct context {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 scalar_t__ SECINITSID_NUM ; 
 scalar_t__ SECINITSID_UNLABELED ; 
 struct context* FUNC0 (struct sidtab*,scalar_t__) ; 
 struct context* FUNC1 (struct sidtab*,scalar_t__) ; 

__attribute__((used)) static struct context *FUNC2(struct sidtab *s, u32 sid, int force)
{
	struct context *context;

	if (sid != 0) {
		if (sid > SECINITSID_NUM)
			context = FUNC0(s, sid - (SECINITSID_NUM + 1));
		else
			context = FUNC1(s, sid);
		if (context && (!context->len || force))
			return context;
	}

	return FUNC1(s, SECINITSID_UNLABELED);
}