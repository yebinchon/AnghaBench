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
struct sgtl5000_priv {int /*<<< orphan*/  supplies; int /*<<< orphan*/  num_supplies; int /*<<< orphan*/  mclk; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sgtl5000_priv* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct sgtl5000_priv *sgtl5000 = FUNC1(client);

	FUNC0(sgtl5000->mclk);
	FUNC2(sgtl5000->num_supplies, sgtl5000->supplies);
	FUNC3(sgtl5000->num_supplies, sgtl5000->supplies);

	return 0;
}