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
typedef  unsigned int u8 ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  CX2072X_MAX_EQ_COEFF ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (struct i2c_client*,unsigned int*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,void const*,size_t) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client,
				 unsigned int reg,
				 const void *val, size_t val_count)
{
	struct device *dev = &client->dev;
	u8 buf[2 + CX2072X_MAX_EQ_COEFF];
	int ret;

	if (FUNC0(val_count + 2 > sizeof(buf)))
		return -EINVAL;

	buf[0] = reg >> 8;
	buf[1] = reg & 0xff;

	FUNC3(buf + 2, val, val_count);

	ret = FUNC2(client, buf, val_count + 2);
	if (ret != val_count + 2) {
		FUNC1(dev, "I2C write failed, ret = %d\n", ret);
		return ret < 0 ? ret : -EIO;
	}
	return 0;
}