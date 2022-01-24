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
struct xt_hashlimit_htable {int /*<<< orphan*/  name; int /*<<< orphan*/  gc_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xt_hashlimit_htable*) ; 
 int /*<<< orphan*/  FUNC2 (struct xt_hashlimit_htable*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  select_all ; 
 int /*<<< orphan*/  FUNC4 (struct xt_hashlimit_htable*) ; 

__attribute__((used)) static void FUNC5(struct xt_hashlimit_htable *hinfo)
{
	FUNC0(&hinfo->gc_work);
	FUNC1(hinfo);
	FUNC2(hinfo, select_all);
	FUNC3(hinfo->name);
	FUNC4(hinfo);
}