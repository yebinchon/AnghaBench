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
struct snd_soc_dai_link_component {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * name; } ;
struct snd_soc_component {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  client_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_component*,struct device_node*) ; 
 struct snd_soc_component* FUNC5 (struct snd_soc_dai_link_component*) ; 

int FUNC6(struct device_node *ep)
{
	struct snd_soc_component *component;
	struct snd_soc_dai_link_component dlc;
	int ret;

	dlc.of_node	= FUNC2(ep);
	dlc.name	= NULL;
	/*
	 * For example HDMI case, HDMI has video/sound port,
	 * but ALSA SoC needs sound port number only.
	 * Thus counting HDMI DT port/endpoint doesn't work.
	 * Then, it should have .of_xlate_dai_id
	 */
	ret = -ENOTSUPP;
	FUNC0(&client_mutex);
	component = FUNC5(&dlc);
	if (component)
		ret = FUNC4(component, ep);
	FUNC1(&client_mutex);

	FUNC3(dlc.of_node);

	return ret;
}