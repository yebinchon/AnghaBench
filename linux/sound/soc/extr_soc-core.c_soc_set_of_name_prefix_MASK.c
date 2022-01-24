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
struct snd_soc_component {char const* name_prefix; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device_node*,char*,char const**) ; 
 struct device_node* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC2(struct snd_soc_component *component)
{
	struct device_node *of_node = FUNC1(component);
	const char *str;
	int ret;

	ret = FUNC0(of_node, "sound-name-prefix", &str);
	if (!ret)
		component->name_prefix = str;
}