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
struct hrtimer {int dummy; } ;
struct bcm_op {scalar_t__ kt_ival2; scalar_t__ kt_ival1; scalar_t__ count; } ;
typedef  scalar_t__ ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hrtimer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static bool FUNC3(struct bcm_op *op, struct hrtimer *hrt)
{
	ktime_t ival;

	if (op->kt_ival1 && op->count)
		ival = op->kt_ival1;
	else if (op->kt_ival2)
		ival = op->kt_ival2;
	else
		return false;

	FUNC0(hrt, FUNC1(FUNC2(), ival));
	return true;
}