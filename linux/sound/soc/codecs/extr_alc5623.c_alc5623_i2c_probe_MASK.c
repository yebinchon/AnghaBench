#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct i2c_device_id {unsigned int driver_data; } ;
struct TYPE_7__ {struct device_node* of_node; struct alc5623_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct alc5623_priv {unsigned int id; void* jack_det_ctrl; void* add_ctrl; int /*<<< orphan*/  regmap; } ;
struct alc5623_platform_data {void* jack_det_ctrl; void* add_ctrl; } ;
struct TYPE_8__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALC5623_VENDOR_ID1 ; 
 int /*<<< orphan*/  ALC5623_VENDOR_ID2 ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ alc5623_dai ; 
 int /*<<< orphan*/  alc5623_regmap ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 struct alc5623_priv* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct alc5623_priv*) ; 
 int FUNC8 (struct device_node*,char*,void**) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  soc_component_device_alc5623 ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	struct alc5623_platform_data *pdata;
	struct alc5623_priv *alc5623;
	struct device_node *np;
	unsigned int vid1, vid2;
	int ret;
	u32 val32;

	alc5623 = FUNC4(&client->dev, sizeof(struct alc5623_priv),
			       GFP_KERNEL);
	if (alc5623 == NULL)
		return -ENOMEM;

	alc5623->regmap = FUNC5(client, &alc5623_regmap);
	if (FUNC0(alc5623->regmap)) {
		ret = FUNC1(alc5623->regmap);
		FUNC3(&client->dev, "Failed to initialise I/O: %d\n", ret);
		return ret;
	}

	ret = FUNC9(alc5623->regmap, ALC5623_VENDOR_ID1, &vid1);
	if (ret < 0) {
		FUNC3(&client->dev, "failed to read vendor ID1: %d\n", ret);
		return ret;
	}

	ret = FUNC9(alc5623->regmap, ALC5623_VENDOR_ID2, &vid2);
	if (ret < 0) {
		FUNC3(&client->dev, "failed to read vendor ID2: %d\n", ret);
		return ret;
	}
	vid2 >>= 8;

	if ((vid1 != 0x10ec) || (vid2 != id->driver_data)) {
		FUNC3(&client->dev, "unknown or wrong codec\n");
		FUNC3(&client->dev, "Expected %x:%lx, got %x:%x\n",
				0x10ec, id->driver_data,
				vid1, vid2);
		return -ENODEV;
	}

	FUNC2(&client->dev, "Found codec id : alc56%02x\n", vid2);

	pdata = client->dev.platform_data;
	if (pdata) {
		alc5623->add_ctrl = pdata->add_ctrl;
		alc5623->jack_det_ctrl = pdata->jack_det_ctrl;
	} else {
		if (client->dev.of_node) {
			np = client->dev.of_node;
			ret = FUNC8(np, "add-ctrl", &val32);
			if (!ret)
				alc5623->add_ctrl = val32;
			ret = FUNC8(np, "jack-det-ctrl", &val32);
			if (!ret)
				alc5623->jack_det_ctrl = val32;
		}
	}

	alc5623->id = vid2;
	switch (alc5623->id) {
	case 0x21:
		alc5623_dai.name = "alc5621-hifi";
		break;
	case 0x22:
		alc5623_dai.name = "alc5622-hifi";
		break;
	case 0x23:
		alc5623_dai.name = "alc5623-hifi";
		break;
	default:
		return -EINVAL;
	}

	FUNC7(client, alc5623);

	ret =  FUNC6(&client->dev,
		&soc_component_device_alc5623, &alc5623_dai, 1);
	if (ret != 0)
		FUNC3(&client->dev, "Failed to register codec: %d\n", ret);

	return ret;
}