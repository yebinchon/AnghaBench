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
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODATA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* reg_pdev ; 
 void* regdb ; 
 int /*<<< orphan*/  FUNC3 (struct firmware const*) ; 
 int FUNC4 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(void)
{
	const struct firmware *fw;
	void *db;
	int err;

	err = FUNC4(&fw, "regulatory.db", &reg_pdev->dev);
	if (err)
		return err;

	if (!FUNC7(fw->data, fw->size)) {
		err = -ENODATA;
		goto out;
	}

	db = FUNC2(fw->data, fw->size, GFP_KERNEL);
	if (!db) {
		err = -ENOMEM;
		goto out;
	}

	FUNC5();
	if (!FUNC0(regdb))
		FUNC1(regdb);
	regdb = db;
	FUNC6();

 out:
	FUNC3(fw);
	return err;
}