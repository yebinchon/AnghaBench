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
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC1 (struct i2c_client*,unsigned int*,unsigned int) ; 

__attribute__((used)) static int FUNC2(void *context, unsigned int reg,
			      unsigned int value)
{
	struct i2c_client *client = context;
	unsigned int i;
	unsigned int size;
	uint8_t buf[5];
	int ret;

	size = FUNC0(&client->dev, reg);
	if (size == 0)
		return -EINVAL;

	buf[0] = reg >> 8;
	buf[1] = reg & 0xff;

	for (i = size + 1; i >= 2; --i) {
		buf[i] = value;
		value >>= 8;
	}

	ret = FUNC1(client, buf, size + 2);
	if (ret == size + 2)
		return 0;
	else if (ret < 0)
		return ret;
	else
		return -EIO;
}