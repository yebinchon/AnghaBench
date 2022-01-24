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
struct atm_vcc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk_receive_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/ * atmarpd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct atm_vcc *vcc)
{
	FUNC1("\n");

	FUNC2();
	atmarpd = NULL;
	FUNC5(&FUNC4(vcc)->sk_receive_queue);
	FUNC3();

	FUNC1("(done)\n");
	FUNC0(THIS_MODULE);
}