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

/* Variables and functions */
 unsigned long WORK_OFFQ_POOL_SHIFT ; 
 int /*<<< orphan*/  WORK_STRUCT_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct work_struct*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct work_struct *work,
					   int pool_id)
{
	FUNC0(work, (unsigned long)pool_id << WORK_OFFQ_POOL_SHIFT,
		      WORK_STRUCT_PENDING);
}