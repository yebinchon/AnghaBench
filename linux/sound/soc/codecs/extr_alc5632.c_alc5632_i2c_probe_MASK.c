#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {unsigned int driver_data; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct alc5632_priv {unsigned int id; int /*<<< orphan*/  regmap; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALC5632_VENDOR_ID1 ; 
 int /*<<< orphan*/  ALC5632_VENDOR_ID2 ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ alc5632_dai ; 
 int /*<<< orphan*/  alc5632_regmap ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct alc5632_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct alc5632_priv*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  soc_component_device_alc5632 ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	struct alc5632_priv *alc5632;
	int ret, ret1, ret2;
	unsigned int vid1, vid2;

	alc5632 = FUNC4(&client->dev,
			 sizeof(struct alc5632_priv), GFP_KERNEL);
	if (alc5632 == NULL)
		return -ENOMEM;

	FUNC7(client, alc5632);

	alc5632->regmap = FUNC5(client, &alc5632_regmap);
	if (FUNC0(alc5632->regmap)) {
		ret = FUNC1(alc5632->regmap);
		FUNC3(&client->dev, "regmap_init() failed: %d\n", ret);
		return ret;
	}

	ret1 = FUNC8(alc5632->regmap, ALC5632_VENDOR_ID1, &vid1);
	ret2 = FUNC8(alc5632->regmap, ALC5632_VENDOR_ID2, &vid2);
	if (ret1 != 0 || ret2 != 0) {
		FUNC3(&client->dev,
		"Failed to read chip ID: ret1=%d, ret2=%d\n", ret1, ret2);
		return -EIO;
	}

	vid2 >>= 8;

	if ((vid1 != 0x10EC) || (vid2 != id->driver_data)) {
		FUNC3(&client->dev,
		"Device is not a ALC5632: VID1=0x%x, VID2=0x%x\n", vid1, vid2);
		return -EINVAL;
	}

	ret = FUNC2(alc5632->regmap);
	if (ret < 0) {
		FUNC3(&client->dev, "Failed to issue reset\n");
		return ret;
	}

	alc5632->id = vid2;
	switch (alc5632->id) {
	case 0x5c:
		alc5632_dai.name = "alc5632-hifi";
		break;
	default:
		return -EINVAL;
	}

	ret = FUNC6(&client->dev,
		&soc_component_device_alc5632, &alc5632_dai, 1);

	if (ret < 0) {
		FUNC3(&client->dev, "Failed to register component: %d\n", ret);
		return ret;
	}

	return ret;
}