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
struct wm_adsp {char* name; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wm_adsp*,struct snd_soc_component*) ; 

int FUNC4(struct wm_adsp *dsp, struct snd_soc_component *component)
{
	char preload[32];

	FUNC2(preload, FUNC0(preload), "%s Preload", dsp->name);
	FUNC1(component, preload);

	FUNC3(dsp, component);

	dsp->component = component;

	return 0;
}