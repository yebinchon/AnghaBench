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
struct hidp_conninfo {int /*<<< orphan*/  bdaddr; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct hidp_session*,struct hidp_conninfo*) ; 
 struct hidp_session* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hidp_session*) ; 

int FUNC3(struct hidp_conninfo *ci)
{
	struct hidp_session *session;

	session = FUNC1(&ci->bdaddr);
	if (session) {
		FUNC0(session, ci);
		FUNC2(session);
	}

	return session ? 0 : -ENOENT;
}