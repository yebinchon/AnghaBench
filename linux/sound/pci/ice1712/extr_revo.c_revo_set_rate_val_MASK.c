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
struct snd_akm4xxx {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ SND_AK4355 ; 
 scalar_t__ SND_AK4358 ; 
 unsigned char FUNC0 (struct snd_akm4xxx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_akm4xxx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_akm4xxx*,int /*<<< orphan*/ ,int,unsigned char) ; 

__attribute__((used)) static void FUNC3(struct snd_akm4xxx *ak, unsigned int rate)
{
	unsigned char old, tmp, dfs;
	int reg, shift;

	if (rate == 0)	/* no hint - S/PDIF input is master, simply return */
		return;

	/* adjust DFS on codecs */
	if (rate > 96000)
		dfs = 2;
	else if (rate > 48000)
		dfs = 1;
	else
		dfs = 0;

	if (ak->type == SND_AK4355 || ak->type == SND_AK4358) {
		reg = 2;
		shift = 4;
	} else {
		reg = 1;
		shift = 3;
	}
	tmp = FUNC0(ak, 0, reg);
	old = (tmp >> shift) & 0x03;
	if (old == dfs)
		return;

	/* reset DFS */
	FUNC1(ak, 1);
	tmp = FUNC0(ak, 0, reg);
	tmp &= ~(0x03 << shift);
	tmp |= dfs << shift;
	/* snd_akm4xxx_write(ak, 0, reg, tmp); */
	FUNC2(ak, 0, reg, tmp); /* value is written in reset(0) */
	FUNC1(ak, 0);
}