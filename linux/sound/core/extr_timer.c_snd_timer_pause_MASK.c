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
struct snd_timer_instance {int flags; } ;

/* Variables and functions */
 int SNDRV_TIMER_IFLG_SLAVE ; 
 int FUNC0 (struct snd_timer_instance*,int) ; 
 int FUNC1 (struct snd_timer_instance*,int) ; 

int FUNC2(struct snd_timer_instance * timeri)
{
	if (timeri->flags & SNDRV_TIMER_IFLG_SLAVE)
		return FUNC1(timeri, false);
	else
		return FUNC0(timeri, false);
}