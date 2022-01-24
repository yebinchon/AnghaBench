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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct rt1011_priv {void** bq_drc_params; int /*<<< orphan*/  cali_work; struct snd_soc_component* component; } ;
struct rt1011_bq_drc_params {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RT1011_ADVMODE_NUM ; 
 int RT1011_BQ_DRC_NUM ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rt1011_priv* FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component)
{
	struct rt1011_priv *rt1011 = FUNC2(component);
	int i;

	rt1011->component = component;

	FUNC1(&rt1011->cali_work);

	rt1011->bq_drc_params = FUNC0(component->dev,
		RT1011_ADVMODE_NUM, sizeof(struct rt1011_bq_drc_params *),
		GFP_KERNEL);
	if (!rt1011->bq_drc_params)
		return -ENOMEM;

	for (i = 0; i < RT1011_ADVMODE_NUM; i++) {
		rt1011->bq_drc_params[i] = FUNC0(component->dev,
			RT1011_BQ_DRC_NUM, sizeof(struct rt1011_bq_drc_params),
			GFP_KERNEL);
		if (!rt1011->bq_drc_params[i])
			return -ENOMEM;
	}

	return 0;
}