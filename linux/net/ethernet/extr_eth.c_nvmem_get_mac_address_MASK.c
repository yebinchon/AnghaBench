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
typedef  void const nvmem_cell ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t ETH_ALEN ; 
 scalar_t__ FUNC0 (void const*) ; 
 int FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*) ; 
 int /*<<< orphan*/  FUNC3 (void const*) ; 
 int /*<<< orphan*/  FUNC4 (void const*) ; 
 void* FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (void const*) ; 
 void* FUNC7 (void const*,size_t*) ; 

int FUNC8(struct device *dev, void *addrbuf)
{
	struct nvmem_cell *cell;
	const void *mac;
	size_t len;

	cell = FUNC5(dev, "mac-address");
	if (FUNC0(cell))
		return FUNC1(cell);

	mac = FUNC7(cell, &len);
	FUNC6(cell);

	if (FUNC0(mac))
		return FUNC1(mac);

	if (len != ETH_ALEN || !FUNC3(mac)) {
		FUNC4(mac);
		return -EINVAL;
	}

	FUNC2(addrbuf, mac);
	FUNC4(mac);

	return 0;
}