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
struct fsl_micfil {int /*<<< orphan*/  mclk; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,unsigned int,int) ; 

__attribute__((used)) static int FUNC4(struct fsl_micfil *micfil,
				    unsigned int freq)
{
	struct device *dev = &micfil->pdev->dev;
	int ret;

	FUNC0(micfil->mclk);

	ret = FUNC2(micfil->mclk, freq * 1024);
	if (ret)
		FUNC3(dev, "failed to set rate (%u): %d\n",
			 freq * 1024, ret);

	FUNC1(micfil->mclk);

	return ret;
}