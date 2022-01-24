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
struct snd_i2c_device {int flags; int addr; struct snd_i2c_bus* bus; } ;
struct snd_i2c_bus {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int SND_I2C_DEVICE_ADDRTEN ; 
 int /*<<< orphan*/  FUNC0 (struct snd_i2c_bus*) ; 
 int FUNC1 (struct snd_i2c_bus*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_i2c_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_i2c_bus*) ; 

__attribute__((used)) static int FUNC4(struct snd_i2c_device *device,
				 unsigned char *bytes, int count)
{
	struct snd_i2c_bus *bus = device->bus;
	int err, res = 0;

	if (device->flags & SND_I2C_DEVICE_ADDRTEN)
		return -EIO;		/* not yet implemented */
	FUNC2(bus);
	err = FUNC1(bus, device->addr << 1);
	if (err < 0) {
		FUNC0(bus);
		return err;
	}
	while (count-- > 0) {
		err = FUNC1(bus, *bytes++);
		if (err < 0) {
			FUNC0(bus);
			return err;
		}
		res++;
	}
	FUNC3(bus);
	return res;
}