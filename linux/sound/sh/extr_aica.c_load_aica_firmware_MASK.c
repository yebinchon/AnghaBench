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
 TYPE_1__* pd ; 
 int /*<<< orphan*/  FUNC0 (struct firmware const*) ; 
 int FUNC1 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(void)
{
	int err;
	const struct firmware *fw_entry;
	FUNC5();
	err = FUNC1(&fw_entry, "aica_firmware.bin", &pd->dev);
	if (FUNC6(err))
		return err;
	/* write firmware into memory */
	FUNC2();
	FUNC4(0, fw_entry->data, fw_entry->size);
	FUNC3();
	FUNC0(fw_entry);
	return err;
}