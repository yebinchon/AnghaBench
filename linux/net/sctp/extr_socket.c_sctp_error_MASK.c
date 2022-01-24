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
struct sock {int dummy; } ;

/* Variables and functions */
 int EPIPE ; 
 int MSG_NOSIGNAL ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sock*) ; 

__attribute__((used)) static int FUNC2(struct sock *sk, int flags, int err)
{
	if (err == -EPIPE)
		err = FUNC1(sk) ? : -EPIPE;
	if (err == -EPIPE && !(flags & MSG_NOSIGNAL))
		FUNC0(SIGPIPE, current, 0);
	return err;
}