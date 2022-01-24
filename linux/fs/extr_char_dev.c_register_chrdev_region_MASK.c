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
struct char_device_struct {int dummy; } ;
typedef  unsigned int dev_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct char_device_struct*) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct char_device_struct*) ; 
 struct char_device_struct* FUNC5 (scalar_t__,int /*<<< orphan*/ ,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(dev_t from, unsigned count, const char *name)
{
	struct char_device_struct *cd;
	dev_t to = from + count;
	dev_t n, next;

	for (n = from; n < to; n = next) {
		next = FUNC3(FUNC1(n)+1, 0);
		if (next > to)
			next = to;
		cd = FUNC5(FUNC1(n), FUNC2(n),
			       next - n, name);
		if (FUNC0(cd))
			goto fail;
	}
	return 0;
fail:
	to = n;
	for (n = from; n < to; n = next) {
		next = FUNC3(FUNC1(n)+1, 0);
		FUNC7(FUNC6(FUNC1(n), FUNC2(n), next - n));
	}
	return FUNC4(cd);
}