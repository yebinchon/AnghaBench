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
struct sidtab {int /*<<< orphan*/ * rcache; } ;
struct context {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t SIDTAB_MAX ; 
 size_t SIDTAB_RCACHE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct context*) ; 
 int /*<<< orphan*/  FUNC2 (struct sidtab*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sidtab*,size_t,size_t) ; 

__attribute__((used)) static int FUNC4(struct sidtab *s, struct context *context,
				u32 *index)
{
	u32 i;

	for (i = 0; i < SIDTAB_RCACHE_SIZE; i++) {
		u32 v = FUNC0(s->rcache[i]);

		if (v >= SIDTAB_MAX)
			continue;

		if (FUNC1(FUNC2(s, v, 0), context)) {
			FUNC3(s, v, i);
			*index = v;
			return 0;
		}
	}
	return -ENOENT;
}