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
typedef  scalar_t__ u32 ;
struct dsp_obj {int /*<<< orphan*/  prHPI_address; int /*<<< orphan*/  pa_parent_adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  H6WRITE ; 
 scalar_t__ PCI_TIMEOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dsp_obj *pdo, u32 address)
{
	u32 timeout = PCI_TIMEOUT;

	do {
		FUNC1(address, pdo->prHPI_address);
	} while (FUNC0(pdo->pa_parent_adapter,
			H6WRITE)
		&& --timeout);

	if (timeout)
		return 0;

	return 1;
}