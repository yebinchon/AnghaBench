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
struct snd_ice1712 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_BYTE_ADDR ; 
 int /*<<< orphan*/  I2C_CTRL ; 
 int /*<<< orphan*/  I2C_DATA ; 
 int /*<<< orphan*/  I2C_DEV_ADDR ; 
 unsigned char ICE1712_I2C_BUSY ; 
 unsigned char ICE1712_I2C_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned char FUNC3(struct snd_ice1712 *ice,
					  unsigned char dev,
					  unsigned char addr)
{
	long t = 0x10000;

	FUNC2(addr, FUNC0(ice, I2C_BYTE_ADDR));
	FUNC2(dev & ~ICE1712_I2C_WRITE, FUNC0(ice, I2C_DEV_ADDR));
	while (t-- > 0 && (FUNC1(FUNC0(ice, I2C_CTRL)) & ICE1712_I2C_BUSY)) ;
	return FUNC1(FUNC0(ice, I2C_DATA));
}