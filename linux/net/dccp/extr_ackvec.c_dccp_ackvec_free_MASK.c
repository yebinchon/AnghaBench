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
struct dccp_ackvec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dccp_ackvec*) ; 
 int /*<<< orphan*/  dccp_ackvec_slab ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dccp_ackvec*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct dccp_ackvec *av)
{
	if (FUNC2(av != NULL)) {
		FUNC0(av);
		FUNC1(dccp_ackvec_slab, av);
	}
}