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
typedef  unsigned int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int FUNC0 (struct i2c_client*,unsigned int*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*) ; 
 unsigned int* FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (long const,unsigned int*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client,
		unsigned int reg, const long values[], size_t len)
{
	size_t i;
	uint8_t *buf, *p;
	int ret;
	size_t send_size = 1 + len * sizeof(uint32_t);

	buf = FUNC2(send_size, GFP_KERNEL | GFP_DMA);
	if (!buf)
		return -ENOMEM;
	buf[0] = reg;

	for (i = 0, p = buf + 1; i < len; i++, p += sizeof(uint32_t))
		FUNC3(values[i], p);

	ret = FUNC0(client, buf, send_size);

	FUNC1(buf);

	if (ret == send_size)
		return 0;
	else if (ret < 0)
		return ret;
	else
		return -EIO;
}