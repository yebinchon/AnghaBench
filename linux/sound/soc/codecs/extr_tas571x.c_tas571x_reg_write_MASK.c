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
struct tas571x_private {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 struct tas571x_private* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,unsigned int*,unsigned int) ; 
 unsigned int FUNC2 (struct tas571x_private*,unsigned int) ; 

__attribute__((used)) static int FUNC3(void *context, unsigned int reg,
			     unsigned int value)
{
	struct i2c_client *client = context;
	struct tas571x_private *priv = FUNC0(client);
	unsigned int i, size;
	uint8_t buf[5];
	int ret;

	size = FUNC2(priv, reg);
	buf[0] = reg;

	for (i = size; i >= 1; --i) {
		buf[i] = value;
		value >>= 8;
	}

	ret = FUNC1(client, buf, size + 1);
	if (ret == size + 1)
		return 0;
	else if (ret < 0)
		return ret;
	else
		return -EIO;
}