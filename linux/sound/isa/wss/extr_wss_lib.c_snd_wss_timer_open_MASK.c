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
struct snd_wss {int dummy; } ;
struct snd_timer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WSS_MODE_TIMER ; 
 struct snd_wss* FUNC0 (struct snd_timer*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_wss*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_timer *timer)
{
	struct snd_wss *chip = FUNC0(timer);
	FUNC1(chip, WSS_MODE_TIMER);
	return 0;
}