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
 scalar_t__ FUNC0 (struct snd_ac97*) ; 
 scalar_t__ FUNC1 (struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97*,int,int,int) ; 

__attribute__((used)) static void FUNC3(struct snd_ac97 *ac97)
{
	/* shared Line-In / Surround Out */
	FUNC2(ac97, 0x76, 1 << 9,
			     FUNC1(ac97) ? (1<<9) : 0);
	/* shared Mic / Center/LFE Out */
	FUNC2(ac97, 0x76, 1 << 10,
			     FUNC0(ac97) ? (1<<10) : 0);
}