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
typedef  size_t u8 ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct cs43130_private {int /*<<< orphan*/ * hpload_dc; int /*<<< orphan*/  hpload_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct cs43130_private* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,char*,...) ; 
 struct i2c_client* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, char *buf, u8 ch)
{
	struct i2c_client *client = FUNC2(dev);
	struct cs43130_private *cs43130 = FUNC0(client);

	if (!cs43130->hpload_done)
		return FUNC1(buf, PAGE_SIZE, "NO_HPLOAD\n");
	else
		return FUNC1(buf, PAGE_SIZE, "%u\n",
				 cs43130->hpload_dc[ch]);
}