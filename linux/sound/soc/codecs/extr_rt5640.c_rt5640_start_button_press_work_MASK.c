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
struct snd_soc_component {int dummy; } ;
struct rt5640_priv {int pressed; int press_reported; int /*<<< orphan*/  bp_work; scalar_t__ release_count; scalar_t__ press_count; scalar_t__ poll_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  BP_POLL_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rt5640_priv* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC4(struct snd_soc_component *component)
{
	struct rt5640_priv *rt5640 = FUNC3(component);

	rt5640->poll_count = 0;
	rt5640->press_count = 0;
	rt5640->release_count = 0;
	rt5640->pressed = false;
	rt5640->press_reported = false;
	FUNC1(component);
	FUNC2(&rt5640->bp_work, FUNC0(BP_POLL_TIME));
}