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
struct firmware {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  async_fw_done ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct firmware const* test_firmware ; 

__attribute__((used)) static void FUNC1(const struct firmware *fw, void *context)
{
	test_firmware = fw;
	FUNC0(&async_fw_done);
}