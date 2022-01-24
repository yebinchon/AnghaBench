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
struct comm_str {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  str; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comm_str*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 struct comm_str* FUNC3 (int) ; 

__attribute__((used)) static struct comm_str *FUNC4(const char *str)
{
	struct comm_str *cs;

	cs = FUNC3(sizeof(*cs));
	if (!cs)
		return NULL;

	cs->str = FUNC2(str);
	if (!cs->str) {
		FUNC0(cs);
		return NULL;
	}

	FUNC1(&cs->refcnt, 1);

	return cs;
}