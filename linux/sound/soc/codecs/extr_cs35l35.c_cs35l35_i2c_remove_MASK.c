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
struct i2c_client {int dummy; } ;
struct cs35l35_private {int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  supplies; int /*<<< orphan*/  num_supplies; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cs35l35_private* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *i2c_client)
{
	struct cs35l35_private *cs35l35 = FUNC1(i2c_client);

	FUNC2(cs35l35->num_supplies, cs35l35->supplies);
	FUNC0(cs35l35->reset_gpio, 0);

	return 0;
}