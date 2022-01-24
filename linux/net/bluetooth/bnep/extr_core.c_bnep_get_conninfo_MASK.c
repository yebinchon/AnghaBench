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
struct bnep_session {int dummy; } ;
struct bnep_conninfo {int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct bnep_conninfo*,struct bnep_session*) ; 
 struct bnep_session* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bnep_session_sem ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct bnep_conninfo *ci)
{
	struct bnep_session *s;
	int err = 0;

	FUNC2(&bnep_session_sem);

	s = FUNC1(ci->dst);
	if (s)
		FUNC0(ci, s);
	else
		err = -ENOENT;

	FUNC3(&bnep_session_sem);
	return err;
}