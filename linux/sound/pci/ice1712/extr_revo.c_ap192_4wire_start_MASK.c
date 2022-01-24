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
 unsigned int VT1724_REVO_CCLK ; 
 unsigned int VT1724_REVO_CS0 ; 
 unsigned int VT1724_REVO_CS3 ; 
 unsigned int FUNC0 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static unsigned int FUNC4(struct snd_ice1712 *ice)
{
	unsigned int tmp;

	FUNC2(ice);
	tmp = FUNC0(ice);
	tmp |= VT1724_REVO_CCLK; /* high at init */
	tmp |= VT1724_REVO_CS0;
	tmp &= ~VT1724_REVO_CS3;
	FUNC1(ice, tmp);
	FUNC3(1);
	return tmp;
}