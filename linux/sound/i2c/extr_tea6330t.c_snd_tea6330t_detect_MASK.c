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
struct snd_i2c_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEA6330T_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct snd_i2c_bus*) ; 
 int FUNC1 (struct snd_i2c_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_i2c_bus*) ; 

int FUNC3(struct snd_i2c_bus *bus, int equalizer)
{
	int res;

	FUNC0(bus);
	res = FUNC1(bus, TEA6330T_ADDR);
	FUNC2(bus);
	return res;
}