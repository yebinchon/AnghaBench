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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct sk_psock {int dummy; } ;
struct sk_msg {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sock*,struct sk_psock*,struct sk_msg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sk_msg*) ; 
 int FUNC2 (struct sk_msg*) ; 
 struct sk_psock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_psock*) ; 
 int FUNC5 (struct sock*,struct sk_msg*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct sock *sk, struct sk_msg *msg,
			  u32 bytes, int flags)
{
	bool ingress = FUNC2(msg);
	struct sk_psock *psock = FUNC3(sk);
	int ret;

	if (FUNC6(!psock)) {
		FUNC1(sk, msg);
		return 0;
	}
	ret = ingress ? FUNC0(sk, psock, msg, bytes, flags) :
			FUNC5(sk, msg, bytes, flags, false);
	FUNC4(sk, psock);
	return ret;
}