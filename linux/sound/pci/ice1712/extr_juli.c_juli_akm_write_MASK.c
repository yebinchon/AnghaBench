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
struct snd_akm4xxx {struct snd_ice1712** private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK4358_ADDR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int /*<<< orphan*/ ,unsigned char,unsigned char) ; 

__attribute__((used)) static void FUNC2(struct snd_akm4xxx *ak, int chip,
			   unsigned char addr, unsigned char data)
{
	struct snd_ice1712 *ice = ak->private_data[0];
	 
	if (FUNC0(chip))
		return;
	FUNC1(ice, AK4358_ADDR, addr, data);
}