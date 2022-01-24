#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct twl4030_codec_data {int dummy; } ;
struct snd_soc_component {TYPE_2__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {TYPE_1__* parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct twl4030_codec_data* FUNC0 (TYPE_2__*) ; 
 struct twl4030_codec_data* FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct twl4030_codec_data*,struct device_node*) ; 

__attribute__((used)) static struct twl4030_codec_data *FUNC5(struct snd_soc_component *component)
{
	struct twl4030_codec_data *pdata = FUNC0(component->dev);
	struct device_node *twl4030_codec_node = NULL;

	twl4030_codec_node = FUNC2(component->dev->parent->of_node,
						  "codec");

	if (!pdata && twl4030_codec_node) {
		pdata = FUNC1(component->dev,
				     sizeof(struct twl4030_codec_data),
				     GFP_KERNEL);
		if (!pdata) {
			FUNC3(twl4030_codec_node);
			return NULL;
		}
		FUNC4(pdata, twl4030_codec_node);
		FUNC3(twl4030_codec_node);
	}

	return pdata;
}