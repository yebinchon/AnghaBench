#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_ice1712 {int /*<<< orphan*/  gpio_mutex; } ;
struct snd_i2c_device {int addr; TYPE_1__* bus; } ;
struct TYPE_2__ {struct snd_ice1712* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,unsigned char) ; 
 unsigned char FUNC1 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_i2c_device *device, unsigned char *bytes, int count)
{
	struct snd_ice1712 *ice = device->bus->private_data;
	int res = count;
	unsigned char tmp;
	
	FUNC4(&ice->gpio_mutex);
	tmp = FUNC1(ice);
	FUNC3(ice, (device->addr << 1) | 1, tmp); /* address + read mode */
	while (count-- > 0)
		*bytes++ = FUNC2(ice, tmp);
	FUNC0(ice, tmp);
	FUNC5(&ice->gpio_mutex);
	return res;
}