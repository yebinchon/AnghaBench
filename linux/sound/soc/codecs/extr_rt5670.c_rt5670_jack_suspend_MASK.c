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
struct rt5670_priv {int /*<<< orphan*/  jack_type; int /*<<< orphan*/  jack_type_saved; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct rt5670_priv* FUNC1 (struct snd_soc_component*) ; 

void FUNC2(struct snd_soc_component *component)
{
	struct rt5670_priv *rt5670 = FUNC1(component);

	rt5670->jack_type_saved = rt5670->jack_type;
	FUNC0(component, 0);
}