#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ssc_device {TYPE_1__* pdev; } ;
struct TYPE_4__ {struct ssc_device* ssc; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ssc_device*) ; 
 int FUNC1 (struct ssc_device*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 TYPE_2__* ssc_info ; 
 struct ssc_device* FUNC4 (int) ; 

int FUNC5(int ssc_id)
{
	struct ssc_device *ssc;
	int ret;

	/* If we can grab the SSC briefly to parent the DAI device off it */
	ssc = FUNC4(ssc_id);
	if (FUNC0(ssc)) {
		FUNC3("Unable to parent ASoC SSC DAI on SSC: %ld\n",
			FUNC1(ssc));
		return FUNC1(ssc);
	} else {
		ssc_info[ssc_id].ssc = ssc;
	}

	ret = FUNC2(&ssc->pdev->dev);

	return ret;
}