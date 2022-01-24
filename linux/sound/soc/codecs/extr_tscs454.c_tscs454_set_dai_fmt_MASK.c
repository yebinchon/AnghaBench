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
struct tscs454 {struct aif* aifs; } ;
struct snd_soc_dai {size_t id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct aif {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct snd_soc_component*,size_t,unsigned int) ; 
 int FUNC1 (struct snd_soc_component*,size_t,unsigned int) ; 
 int FUNC2 (struct snd_soc_component*,struct aif*,unsigned int) ; 
 struct tscs454* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *dai, unsigned int fmt)
{
	struct snd_soc_component *component = dai->component;
	struct tscs454 *tscs454 = FUNC3(component);
	struct aif *aif = &tscs454->aifs[dai->id];
	int ret;

	ret = FUNC2(component, aif, fmt);
	if (ret < 0)
		return ret;

	ret = FUNC1(component, dai->id, fmt);
	if (ret < 0)
		return ret;

	ret = FUNC0(component, dai->id, fmt);
	if (ret < 0)
		return ret;

	return 0;
}