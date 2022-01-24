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
struct rt1308_priv {struct snd_soc_component* component; } ;

/* Variables and functions */
 int FUNC0 (struct snd_soc_component*) ; 
 struct rt1308_priv* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_component *component)
{
	struct rt1308_priv *rt1308 = FUNC1(component);

	rt1308->component = component;

	return FUNC0(component);
}