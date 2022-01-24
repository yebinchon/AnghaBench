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

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PSTORE_COMPRESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * big_oops_buf ; 
 scalar_t__ big_oops_buf_sz ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * tfm ; 

__attribute__((used)) static void FUNC3(void)
{
	if (FUNC0(CONFIG_PSTORE_COMPRESS) && tfm) {
		FUNC1(tfm);
		tfm = NULL;
	}
	FUNC2(big_oops_buf);
	big_oops_buf = NULL;
	big_oops_buf_sz = 0;
}