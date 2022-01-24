#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct aic3x_priv {int ocmv; TYPE_1__* supplies; } ;
struct TYPE_3__ {int /*<<< orphan*/  consumer; } ;

/* Variables and functions */
 int HPOUT_SC_OCMV_1_35V ; 
 int HPOUT_SC_OCMV_1_5V ; 
 int HPOUT_SC_OCMV_1_65V ; 
 int HPOUT_SC_OCMV_1_8V ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int,int) ; 
 struct aic3x_priv* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct i2c_client *client)
{
	struct device_node *np = client->dev.of_node;
	struct aic3x_priv *aic3x = FUNC1(client);
	u32 value;
	int dvdd, avdd;

	if (np && !FUNC2(np, "ai3x-ocmv", &value)) {
		/* OCMV setting is forced by DT */
		if (value <= 3) {
			aic3x->ocmv = value;
			return;
		}
	}

	dvdd = FUNC3(aic3x->supplies[1].consumer);
	avdd = FUNC3(aic3x->supplies[2].consumer);

	if (avdd > 3600000 || dvdd > 1950000) {
		FUNC0(&client->dev,
			 "Too high supply voltage(s) AVDD: %d, DVDD: %d\n",
			 avdd, dvdd);
	} else if (avdd == 3600000 && dvdd == 1950000) {
		aic3x->ocmv = HPOUT_SC_OCMV_1_8V;
	} else if (avdd > 3300000 && dvdd > 1800000) {
		aic3x->ocmv = HPOUT_SC_OCMV_1_65V;
	} else if (avdd > 3000000 && dvdd > 1650000) {
		aic3x->ocmv = HPOUT_SC_OCMV_1_5V;
	} else if (avdd >= 2700000 && dvdd >= 1525000) {
		aic3x->ocmv = HPOUT_SC_OCMV_1_35V;
	} else {
		FUNC0(&client->dev,
			 "Invalid supply voltage(s) AVDD: %d, DVDD: %d\n",
			 avdd, dvdd);
	}
}