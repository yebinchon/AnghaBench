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
struct user_namespace {int dummy; } ;
struct sock {TYPE_1__* sk_socket; } ;
struct TYPE_2__ {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct user_namespace*,int) ; 
 scalar_t__ FUNC1 (struct user_namespace*,int) ; 

bool FUNC2(const struct sock *sk,
		   struct user_namespace *user_ns, int cap)
{
	return FUNC0(sk->sk_socket->file, user_ns, cap) &&
		FUNC1(user_ns, cap);
}