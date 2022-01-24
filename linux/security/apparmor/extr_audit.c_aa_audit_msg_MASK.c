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
struct common_audit_data {int dummy; } ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct common_audit_data*) ; 
 int /*<<< orphan*/  audit_pre ; 
 int /*<<< orphan*/  FUNC1 (struct common_audit_data*,int /*<<< orphan*/ ,void (*) (struct audit_buffer*,void*)) ; 

void FUNC2(int type, struct common_audit_data *sa,
		  void (*cb) (struct audit_buffer *, void *))
{
	FUNC0(sa)->type = type;
	FUNC1(sa, audit_pre, cb);
}