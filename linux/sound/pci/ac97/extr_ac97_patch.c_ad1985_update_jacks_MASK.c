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
struct snd_ac97 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_AD_SERIAL_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ac97*) ; 
 scalar_t__ FUNC1 (struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(struct snd_ac97 *ac97)
{
	FUNC0(ac97);
	/* clear OMS if shared jack is to be used for C/LFE out */
	FUNC2(ac97, AC97_AD_SERIAL_CFG, 1 << 9,
			     FUNC1(ac97) ? 1 << 9 : 0);
}