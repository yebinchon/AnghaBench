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
struct xt_hashlimit_htable {scalar_t__ use; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  hashlimit_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xt_hashlimit_htable*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct xt_hashlimit_htable *hinfo)
{
	FUNC2(&hashlimit_mutex);
	if (--hinfo->use == 0) {
		FUNC0(&hinfo->node);
		FUNC1(hinfo);
	}
	FUNC3(&hashlimit_mutex);
}