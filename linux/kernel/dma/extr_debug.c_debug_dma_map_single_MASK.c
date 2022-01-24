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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *,char*,void const*,unsigned long) ; 
 scalar_t__ FUNC2 (void const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void const*) ; 

void FUNC5(struct device *dev, const void *addr,
			    unsigned long len)
{
	if (FUNC3(FUNC0()))
		return;

	if (!FUNC4(addr))
		FUNC1(dev, NULL, "device driver maps memory from invalid area [addr=%p] [len=%lu]\n",
			   addr, len);

	if (FUNC2(addr))
		FUNC1(dev, NULL, "device driver maps memory from vmalloc area [addr=%p] [len=%lu]\n",
			   addr, len);
}