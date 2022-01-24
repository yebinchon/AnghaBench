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
struct rds_message {int /*<<< orphan*/  m_conn_item; int /*<<< orphan*/  m_sock_item; int /*<<< orphan*/  m_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct rds_message*) ; 
 int /*<<< orphan*/  FUNC2 (struct rds_message*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_message*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct rds_message*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct rds_message *rm)
{
	FUNC5("put rm %p ref %d\n", rm, FUNC7(&rm->m_refcount));
	FUNC1(!FUNC7(&rm->m_refcount), "danger refcount zero on %p\n", rm);
	if (FUNC6(&rm->m_refcount)) {
		FUNC0(!FUNC3(&rm->m_sock_item));
		FUNC0(!FUNC3(&rm->m_conn_item));
		FUNC4(rm);

		FUNC2(rm);
	}
}