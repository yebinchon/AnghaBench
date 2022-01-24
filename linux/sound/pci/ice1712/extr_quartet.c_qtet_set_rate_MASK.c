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
 unsigned int CPLD_CKS_MASK ; 
 unsigned int CPLD_SYNC_SEL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RATE ; 
 unsigned char VT1724_SPDIF_MASTER ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (struct snd_ice1712*) ; 
 unsigned char FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ice1712*,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct snd_ice1712 *ice, unsigned int rate)
{
	unsigned int new;
	unsigned char val;
	/* switching ice1724 to external clock - supplied by ext. circuits */
	val = FUNC3(FUNC0(ice, RATE));
	FUNC4(val | VT1724_SPDIF_MASTER, FUNC0(ice, RATE));

	new =  (FUNC2(ice) & ~CPLD_CKS_MASK) | FUNC1(rate);
	/* switch to internal clock, drop CPLD_SYNC_SEL */
	new &= ~CPLD_SYNC_SEL;
	/* dev_dbg(ice->card->dev, "QT - set_rate: old %x, new %x\n",
	   get_cpld(ice), new); */
	FUNC5(ice, new);
}