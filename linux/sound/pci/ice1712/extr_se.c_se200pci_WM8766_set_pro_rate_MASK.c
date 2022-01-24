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
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int,int) ; 

__attribute__((used)) static void FUNC1(struct snd_ice1712 *ice,
					unsigned int rate)
{
	if (rate > 96000)
		FUNC0(ice, 0x0a, 0x000); /* MCLK=128fs */
	else
		FUNC0(ice, 0x0a, 0x080); /* MCLK=256fs */
}