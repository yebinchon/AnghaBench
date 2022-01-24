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
struct bd28623_priv {int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  dev; int /*<<< orphan*/  supplies; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct bd28623_priv *bd)
{
	int ret;

	ret = FUNC3(FUNC0(bd->supplies), bd->supplies);
	if (ret) {
		FUNC1(bd->dev, "Failed to enable supplies: %d\n", ret);
		return ret;
	}

	FUNC2(bd->reset_gpio, 0);
	FUNC4(300000, 400000);

	return 0;
}