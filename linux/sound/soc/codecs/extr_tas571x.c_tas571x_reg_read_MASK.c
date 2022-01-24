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
struct i2c_msg {int len; unsigned int* buf; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  send_buf ;

/* Variables and functions */
 int FUNC0 (struct i2c_msg*) ; 
 int EIO ; 
 scalar_t__ I2C_M_RD ; 
 struct tas571x_private* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 unsigned int FUNC3 (struct tas571x_private*,unsigned int) ; 

__attribute__((used)) static int FUNC4(void *context, unsigned int reg,
			    unsigned int *value)
{
	struct i2c_client *client = context;
	struct tas571x_private *priv = FUNC1(client);
	uint8_t send_buf, recv_buf[4];
	struct i2c_msg msgs[2];
	unsigned int size;
	unsigned int i;
	int ret;

	size = FUNC3(priv, reg);
	send_buf = reg;

	msgs[0].addr = client->addr;
	msgs[0].len = sizeof(send_buf);
	msgs[0].buf = &send_buf;
	msgs[0].flags = 0;

	msgs[1].addr = client->addr;
	msgs[1].len = size;
	msgs[1].buf = recv_buf;
	msgs[1].flags = I2C_M_RD;

	ret = FUNC2(client->adapter, msgs, FUNC0(msgs));
	if (ret < 0)
		return ret;
	else if (ret != FUNC0(msgs))
		return -EIO;

	*value = 0;

	for (i = 0; i < size; i++) {
		*value <<= 8;
		*value |= recv_buf[i];
	}

	return 0;
}