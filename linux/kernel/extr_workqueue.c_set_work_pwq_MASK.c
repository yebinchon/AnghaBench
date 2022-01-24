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
struct work_struct {int dummy; } ;
struct pool_workqueue {int dummy; } ;

/* Variables and functions */
 unsigned long WORK_STRUCT_PENDING ; 
 unsigned long WORK_STRUCT_PWQ ; 
 int /*<<< orphan*/  FUNC0 (struct work_struct*,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC1(struct work_struct *work, struct pool_workqueue *pwq,
			 unsigned long extra_flags)
{
	FUNC0(work, (unsigned long)pwq,
		      WORK_STRUCT_PENDING | WORK_STRUCT_PWQ | extra_flags);
}