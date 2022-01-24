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
struct tc_service_curve {int dummy; } ;
struct hfsc_class {int /*<<< orphan*/  cl_flags; int /*<<< orphan*/  cl_total; int /*<<< orphan*/  cl_vt; int /*<<< orphan*/  cl_fsc; int /*<<< orphan*/  cl_virtual; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFSC_FSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tc_service_curve*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct hfsc_class *cl, struct tc_service_curve *fsc)
{
	FUNC1(fsc, &cl->cl_fsc);
	FUNC0(&cl->cl_virtual, &cl->cl_fsc, cl->cl_vt, cl->cl_total);
	cl->cl_flags |= HFSC_FSC;
}