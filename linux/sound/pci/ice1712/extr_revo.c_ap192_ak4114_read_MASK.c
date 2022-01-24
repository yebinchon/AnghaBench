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
 int AK4114_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,unsigned int) ; 
 unsigned int FUNC1 (struct snd_ice1712*) ; 
 unsigned char FUNC2 (struct snd_ice1712*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,unsigned int,int,int) ; 

__attribute__((used)) static unsigned char FUNC4(void *private_data, unsigned char addr)
{
	struct snd_ice1712 *ice = private_data;
	unsigned int tmp;
	unsigned char data;

	tmp = FUNC1(ice);
	FUNC3(ice, tmp, (AK4114_ADDR << 6) | (addr & 0x1f), 7);
	data = FUNC2(ice, tmp, 7);
	FUNC0(ice, tmp);
	return data;
}