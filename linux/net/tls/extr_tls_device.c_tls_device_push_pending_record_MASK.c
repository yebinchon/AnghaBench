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
struct iov_iter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TLS_RECORD_TYPE_DATA ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct iov_iter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sock*,struct iov_iter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sock *sk, int flags)
{
	struct iov_iter	msg_iter;

	FUNC0(&msg_iter, WRITE, NULL, 0, 0);
	return FUNC1(sk, &msg_iter, 0, flags, TLS_RECORD_TYPE_DATA);
}