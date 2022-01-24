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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 char* FUNC1 (char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 
 TYPE_1__* reg_pdev ; 
 scalar_t__ regdb ; 
 int /*<<< orphan*/  regdb_fw_cb ; 
 int FUNC3 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const char *alpha2)
{
	FUNC0();

	if (regdb)
		return FUNC2(alpha2);

	alpha2 = FUNC1(alpha2, 2, GFP_KERNEL);
	if (!alpha2)
		return -ENOMEM;

	return FUNC3(THIS_MODULE, true, "regulatory.db",
				       &reg_pdev->dev, GFP_KERNEL,
				       (void *)alpha2, regdb_fw_cb);
}