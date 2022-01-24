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
 int /*<<< orphan*/  FUNC0 (struct snd_akm4xxx*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int,int) ; 

__attribute__((used)) static void FUNC2(struct snd_akm4xxx *ak, unsigned int rate)
{
	struct snd_ice1712 *ice = ak->private_data[0];
	int dfs;

	FUNC0(ak, rate);

	/* reset CKS */
	FUNC1(ice, 1 << 8, rate > 96000 ? 1 << 8 : 0);
	/* reset DFS pins of AK5385A for ADC, too */
	if (rate > 96000)
		dfs = 2;
	else if (rate > 48000)
		dfs = 1;
	else
		dfs = 0;
	FUNC1(ice, 3 << 9, dfs << 9);
	/* reset ADC */
	FUNC1(ice, 1 << 11, 0);
	FUNC1(ice, 1 << 11, 1 << 11);
}