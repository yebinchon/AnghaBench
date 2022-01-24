#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  node; } ;
struct tas {int /*<<< orphan*/  mtx; TYPE_1__ codec; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TAS_ACR_ANALOG_PDOWN ; 
 int /*<<< orphan*/  TAS_REG_ACR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct tas* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct tas*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tas*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct tas *tas = FUNC1(client);
	u8 tmp = TAS_ACR_ANALOG_PDOWN;

	FUNC0(&tas->codec);
	FUNC4(tas->codec.node);

	/* power down codec chip */
	FUNC5(tas, TAS_REG_ACR, 1, &tmp);

	FUNC3(&tas->mtx);
	FUNC2(tas);
	return 0;
}