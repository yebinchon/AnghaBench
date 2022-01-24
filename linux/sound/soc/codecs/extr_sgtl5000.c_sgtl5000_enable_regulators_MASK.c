#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sgtl5000_priv {int num_supplies; TYPE_1__* supplies; } ;
struct regulator {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC1 (struct regulator*) ; 
 int FUNC2 (struct regulator*) ; 
 struct sgtl5000_priv* FUNC3 (struct i2c_client*) ; 
 int FUNC4 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 struct regulator* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct regulator*) ; 
 int /*<<< orphan*/ * supply_names ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client)
{
	int ret;
	int i;
	int external_vddd = 0;
	struct regulator *vddd;
	struct sgtl5000_priv *sgtl5000 = FUNC3(client);

	for (i = 0; i < FUNC0(sgtl5000->supplies); i++)
		sgtl5000->supplies[i].supply = supply_names[i];

	vddd = FUNC7(&client->dev, "VDDD");
	if (FUNC1(vddd)) {
		/* See if it's just not registered yet */
		if (FUNC2(vddd) == -EPROBE_DEFER)
			return -EPROBE_DEFER;
	} else {
		external_vddd = 1;
		FUNC8(vddd);
	}

	sgtl5000->num_supplies = FUNC0(sgtl5000->supplies)
				 - 1 + external_vddd;
	ret = FUNC6(&client->dev, sgtl5000->num_supplies,
				 sgtl5000->supplies);
	if (ret)
		return ret;

	ret = FUNC4(sgtl5000->num_supplies,
				    sgtl5000->supplies);
	if (!ret)
		FUNC9(10, 20);
	else
		FUNC5(sgtl5000->num_supplies,
				    sgtl5000->supplies);

	return ret;
}