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
struct rt5645_priv {int /*<<< orphan*/  supplies; int /*<<< orphan*/  btn_check_timer; int /*<<< orphan*/  rcclock_work; int /*<<< orphan*/  jack_detect_work; } ;
struct i2c_client {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct rt5645_priv*) ; 
 struct rt5645_priv* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *i2c)
{
	struct rt5645_priv *rt5645 = FUNC4(i2c);

	if (i2c->irq)
		FUNC3(i2c->irq, rt5645);

	FUNC1(&rt5645->jack_detect_work);
	FUNC1(&rt5645->rcclock_work);
	FUNC2(&rt5645->btn_check_timer);

	FUNC5(FUNC0(rt5645->supplies), rt5645->supplies);

	return 0;
}