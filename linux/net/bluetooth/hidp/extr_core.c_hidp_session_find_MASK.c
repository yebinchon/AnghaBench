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
struct hidp_session {int dummy; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 struct hidp_session* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hidp_session*) ; 
 int /*<<< orphan*/  hidp_session_sem ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct hidp_session *FUNC4(const bdaddr_t *bdaddr)
{
	struct hidp_session *session;

	FUNC1(&hidp_session_sem);

	session = FUNC0(bdaddr);
	if (session)
		FUNC2(session);

	FUNC3(&hidp_session_sem);

	return session;
}