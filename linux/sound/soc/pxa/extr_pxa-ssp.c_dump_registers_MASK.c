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
struct ssp_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSACD ; 
 int /*<<< orphan*/  SSCR0 ; 
 int /*<<< orphan*/  SSCR1 ; 
 int /*<<< orphan*/  SSPSP ; 
 int /*<<< orphan*/  SSSR ; 
 int /*<<< orphan*/  SSTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ssp_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ssp_device *ssp)
{
	FUNC0(&ssp->pdev->dev, "SSCR0 0x%08x SSCR1 0x%08x SSTO 0x%08x\n",
		 FUNC1(ssp, SSCR0), FUNC1(ssp, SSCR1),
		 FUNC1(ssp, SSTO));

	FUNC0(&ssp->pdev->dev, "SSPSP 0x%08x SSSR 0x%08x SSACD 0x%08x\n",
		 FUNC1(ssp, SSPSP), FUNC1(ssp, SSSR),
		 FUNC1(ssp, SSACD));
}