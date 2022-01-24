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
struct timer_list {int dummy; } ;
struct snd_timer_system_private {long correction; scalar_t__ last_jiffies; scalar_t__ last_expires; struct snd_timer* snd_timer; } ;
struct snd_timer {int dummy; } ;

/* Variables and functions */
 struct snd_timer_system_private* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 struct snd_timer_system_private* priv ; 
 int /*<<< orphan*/  FUNC1 (struct snd_timer*,long) ; 
 scalar_t__ FUNC2 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  tlist ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct snd_timer_system_private *priv = FUNC0(priv, t,
								tlist);
	struct snd_timer *timer = priv->snd_timer;
	unsigned long jiff = jiffies;
	if (FUNC2(jiff, priv->last_expires))
		priv->correction += (long)jiff - (long)priv->last_expires;
	FUNC1(timer, (long)jiff - (long)priv->last_jiffies);
}