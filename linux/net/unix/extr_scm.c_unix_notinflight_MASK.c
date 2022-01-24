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
struct user_struct {int /*<<< orphan*/  unix_inflight; } ;
struct unix_sock {int /*<<< orphan*/  link; int /*<<< orphan*/  inflight; } ;
struct sock {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unix_gc_lock ; 
 struct sock* FUNC7 (struct file*) ; 
 struct unix_sock* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  unix_tot_inflight ; 

void FUNC9(struct user_struct *user, struct file *fp)
{
	struct sock *s = FUNC7(fp);

	FUNC5(&unix_gc_lock);

	if (s) {
		struct unix_sock *u = FUNC8(s);

		FUNC0(!FUNC2(&u->inflight));
		FUNC0(FUNC4(&u->link));

		if (FUNC1(&u->inflight))
			FUNC3(&u->link);
		unix_tot_inflight--;
	}
	user->unix_inflight--;
	FUNC6(&unix_gc_lock);
}