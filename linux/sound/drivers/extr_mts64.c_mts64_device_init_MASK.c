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
struct parport {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MTS64_CMD_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct parport*) ; 
 scalar_t__ FUNC2 (struct parport*) ; 
 int /*<<< orphan*/  FUNC3 (struct parport*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct parport *p)
{
	int i;

	FUNC3(p, MTS64_CMD_RESET);

	for (i = 0; i < 64; ++i) {
		FUNC0(100);

		if (FUNC2(p) == 0) {
			/* success */
			FUNC1(p);
			return 0;
		}
	}
	FUNC1(p);

	return -EIO;
}