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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int FUNC0 (void*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void *control_data,
	unsigned int addr, const uint8_t data[], size_t len)
{
	uint8_t *buf;
	int ret;

	buf = FUNC2(2 + len, GFP_KERNEL | GFP_DMA);
	if (!buf)
		return -ENOMEM;

	FUNC4(addr, buf);
	FUNC3(buf + 2, data, len);

	ret = FUNC0(control_data, buf, len + 2);

	FUNC1(buf);

	if (ret < 0)
		return ret;

	return 0;
}