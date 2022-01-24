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
struct rds_message {int /*<<< orphan*/  m_flags; int /*<<< orphan*/  m_flush_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDS_MSG_MAPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(struct rds_message *rm)
{
	FUNC1(rm->m_flush_wait,
			!FUNC0(RDS_MSG_MAPPED, &rm->m_flags));
}