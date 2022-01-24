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
struct sidtab {int /*<<< orphan*/  count; } ;
struct context {int dummy; } ;

/* Variables and functions */
 struct context* FUNC0 (struct sidtab*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct context *FUNC2(struct sidtab *s, u32 index)
{
	/* read entries only after reading count */
	u32 count = FUNC1(&s->count);

	if (index >= count)
		return NULL;

	return FUNC0(s, index, 0);
}