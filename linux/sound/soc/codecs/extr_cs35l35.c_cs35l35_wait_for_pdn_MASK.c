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
struct TYPE_2__ {scalar_t__ ext_bst; } ;
struct cs35l35_private {int /*<<< orphan*/  dev; int /*<<< orphan*/  pdn_done; TYPE_1__ pdata; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct cs35l35_private *cs35l35)
{
	int ret;

	if (cs35l35->pdata.ext_bst) {
		FUNC3(5000, 5500);
		return 0;
	}

	FUNC2(&cs35l35->pdn_done);

	ret = FUNC4(&cs35l35->pdn_done,
					  FUNC1(100));
	if (ret == 0) {
		FUNC0(cs35l35->dev, "PDN_DONE did not complete\n");
		return -ETIMEDOUT;
	}

	return 0;
}