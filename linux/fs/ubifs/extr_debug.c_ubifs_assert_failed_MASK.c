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
struct ubifs_info {int assert_action; } ;

/* Variables and functions */
#define  ASSACT_PANIC 130 
#define  ASSACT_REPORT 129 
#define  ASSACT_RO 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,char*,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,int /*<<< orphan*/ ) ; 

void FUNC4(struct ubifs_info *c, const char *expr,
			 const char *file, int line)
{
	FUNC2(c, "UBIFS assert failed: %s, in %s:%u", expr, file, line);

	switch (c->assert_action) {
		case ASSACT_PANIC:
		FUNC0();
		break;

		case ASSACT_RO:
		FUNC3(c, -EINVAL);
		break;

		case ASSACT_REPORT:
		default:
		FUNC1();
		break;

	}
}