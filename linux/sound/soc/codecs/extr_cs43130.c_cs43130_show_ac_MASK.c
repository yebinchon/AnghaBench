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
struct cs43130_private {int /*<<< orphan*/ ** hpload_ac; scalar_t__ ac_meas; scalar_t__ hpload_done; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  cs43130_ac_freq ; 
 struct cs43130_private* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (char*,scalar_t__,char*,...) ; 
 struct i2c_client* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, char *buf, u8 ch)
{
	int i, j = 0, tmp;
	struct i2c_client *client = FUNC3(dev);
	struct cs43130_private *cs43130 = FUNC1(client);

	if (cs43130->hpload_done && cs43130->ac_meas) {
		for (i = 0; i < FUNC0(cs43130_ac_freq); i++) {
			tmp = FUNC2(buf + j, PAGE_SIZE - j, "%u\n",
					cs43130->hpload_ac[i][ch]);
			if (!tmp)
				break;

			j += tmp;
		}

		return j;
	} else {
		return FUNC2(buf, PAGE_SIZE, "NO_HPLOAD\n");
	}
}