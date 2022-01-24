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
struct aa_label {TYPE_1__* proxy; } ;
struct TYPE_2__ {int /*<<< orphan*/  label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct aa_label* FUNC1 (struct aa_label*) ; 
 struct aa_label* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct aa_label*) ; 

__attribute__((used)) static inline struct aa_label *FUNC4(struct aa_label *l)
{
	if (!l)
		return NULL;

	if (FUNC3(l)) {
		struct aa_label *tmp;

		FUNC0(!l->proxy);
		FUNC0(!l->proxy->label);
		/* BUG: only way this can happen is @l ref count and its
		 * replacement count have gone to 0 and are on their way
		 * to destruction. ie. we have a refcounting error
		 */
		tmp = FUNC2(&l->proxy->label);
		FUNC0(!tmp);

		return tmp;
	}

	return FUNC1(l);
}