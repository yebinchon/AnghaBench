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
struct socket {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct scm_cookie {TYPE_1__ creds; int /*<<< orphan*/  pid; } ;
struct msghdr {int /*<<< orphan*/  msg_controllen; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct socket*,struct msghdr*,struct scm_cookie*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct socket*,struct sock const*) ; 

__attribute__((used)) static int FUNC5(struct scm_cookie *scm,
			    struct socket *socket,
			    const struct sock *other)
{
	int err;
	struct msghdr msg = { .msg_controllen = 0 };

	err = FUNC2(socket, &msg, scm, false);
	if (err)
		return err;

	if (FUNC4(socket, other)) {
		scm->pid = FUNC1(FUNC3(current));
		FUNC0(&scm->creds.uid, &scm->creds.gid);
	}
	return err;
}