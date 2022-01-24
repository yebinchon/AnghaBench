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
struct tscs454 {int /*<<< orphan*/  sub_ram; int /*<<< orphan*/  spk_ram; int /*<<< orphan*/  dac_ram; int /*<<< orphan*/  pll2; int /*<<< orphan*/  pll1; int /*<<< orphan*/  aifs_status_lock; int /*<<< orphan*/ * aifs; int /*<<< orphan*/  regmap; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int TSCS454_DAI_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  tscs454_regmap_cfg ; 

__attribute__((used)) static inline int FUNC7(struct tscs454 *tscs454,
		struct i2c_client *i2c)
{
	int i;
	int ret;

	tscs454->regmap = FUNC4(i2c, &tscs454_regmap_cfg);
	if (FUNC0(tscs454->regmap)) {
		ret = FUNC1(tscs454->regmap);
		return ret;
	}

	for (i = 0; i < TSCS454_DAI_COUNT; i++)
		FUNC2(&tscs454->aifs[i], i);

	FUNC5(&tscs454->aifs_status_lock);
	FUNC6(&tscs454->pll1, 1);
	FUNC6(&tscs454->pll2, 2);

	FUNC3(&tscs454->dac_ram);
	FUNC3(&tscs454->spk_ram);
	FUNC3(&tscs454->sub_ram);

	return 0;
}