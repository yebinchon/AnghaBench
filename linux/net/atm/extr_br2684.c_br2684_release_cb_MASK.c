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
struct br2684_vcc {int /*<<< orphan*/  (* old_release_cb ) (struct atm_vcc*) ;int /*<<< orphan*/  device; int /*<<< orphan*/  qspace; } ;
struct atm_vcc {int dummy; } ;

/* Variables and functions */
 struct br2684_vcc* FUNC0 (struct atm_vcc*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atm_vcc*) ; 

__attribute__((used)) static void FUNC4(struct atm_vcc *atmvcc)
{
	struct br2684_vcc *brvcc = FUNC0(atmvcc);

	if (FUNC1(&brvcc->qspace) > 0)
		FUNC2(brvcc->device);

	if (brvcc->old_release_cb)
		brvcc->old_release_cb(atmvcc);
}