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
struct device {int dummy; } ;
struct audio_drv_data {int /*<<< orphan*/  acp_mmio; int /*<<< orphan*/  asic_type; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct audio_drv_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  mmACP_EXTERNAL_INTR_ENB ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	int status;
	struct audio_drv_data *adata = FUNC3(dev);

	status = FUNC0(adata->acp_mmio, adata->asic_type);
	if (status) {
		FUNC2(dev, "ACP Init failed status:%d\n", status);
		return status;
	}
	FUNC1(1, adata->acp_mmio, mmACP_EXTERNAL_INTR_ENB);
	return 0;
}