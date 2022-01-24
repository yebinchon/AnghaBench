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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GUEST_RIP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

void FUNC5(void)
{
	FUNC1(6);

        /* Exit to L1 */
	FUNC2();

	/* L1 has now set up a shadow VMCS for us.  */
	FUNC0(FUNC3(GUEST_RIP) == 0xc0ffee);
	FUNC1(10);
	FUNC0(FUNC3(GUEST_RIP) == 0xc0ffee);
	FUNC0(!FUNC4(GUEST_RIP, 0xc0fffee));
	FUNC1(11);
	FUNC0(FUNC3(GUEST_RIP) == 0xc0fffee);
	FUNC0(!FUNC4(GUEST_RIP, 0xc0ffffee));
	FUNC1(12);

	/* Done, exit to L1 and never come back.  */
	FUNC2();
}