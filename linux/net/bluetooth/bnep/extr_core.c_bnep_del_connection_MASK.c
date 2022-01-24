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
typedef  int u32 ;
struct bnep_session {TYPE_1__* sock; int /*<<< orphan*/  terminate; } ;
struct bnep_conndel_req {int flags; int /*<<< orphan*/  dst; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOENT ; 
 struct bnep_session* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bnep_session_sem ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct bnep_conndel_req *req)
{
	u32 valid_flags = 0;
	struct bnep_session *s;
	int  err = 0;

	FUNC0("");

	if (req->flags & ~valid_flags)
		return -EINVAL;

	FUNC3(&bnep_session_sem);

	s = FUNC1(req->dst);
	if (s) {
		FUNC2(&s->terminate);
		FUNC6(FUNC4(s->sock->sk));
	} else
		err = -ENOENT;

	FUNC5(&bnep_session_sem);
	return err;
}