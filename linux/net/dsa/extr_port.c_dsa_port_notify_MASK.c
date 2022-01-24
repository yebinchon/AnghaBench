#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct raw_notifier_head {int dummy; } ;
struct dsa_port {TYPE_2__* ds; } ;
struct TYPE_4__ {TYPE_1__* dst; } ;
struct TYPE_3__ {struct raw_notifier_head nh; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct raw_notifier_head*,unsigned long,void*) ; 

__attribute__((used)) static int FUNC2(const struct dsa_port *dp, unsigned long e, void *v)
{
	struct raw_notifier_head *nh = &dp->ds->dst->nh;
	int err;

	err = FUNC1(nh, e, v);

	return FUNC0(err);
}