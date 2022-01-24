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
struct snd_ice1712 {int /*<<< orphan*/  i2c_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_BYTE_ADDR ; 
 int /*<<< orphan*/  I2C_DATA ; 
 int /*<<< orphan*/  I2C_DEV_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 unsigned char VT1724_I2C_WRITE ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ice1712*) ; 

unsigned char FUNC6(struct snd_ice1712 *ice,
				  unsigned char dev, unsigned char addr)
{
	unsigned char val;

	FUNC2(&ice->i2c_mutex);
	FUNC5(ice);
	FUNC4(addr, FUNC0(ice, I2C_BYTE_ADDR));
	FUNC4(dev & ~VT1724_I2C_WRITE, FUNC0(ice, I2C_DEV_ADDR));
	FUNC5(ice);
	val = FUNC1(FUNC0(ice, I2C_DATA));
	FUNC3(&ice->i2c_mutex);
	/*
	dev_dbg(ice->card->dev, "i2c_read: [0x%x,0x%x] = 0x%x\n", dev, addr, val);
	*/
	return val;
}