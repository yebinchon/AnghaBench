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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UNIX_DIAG_PEER ; 
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

__attribute__((used)) static int FUNC6(struct sock *sk, struct sk_buff *nlskb)
{
	struct sock *peer;
	int ino;

	peer = FUNC3(sk);
	if (peer) {
		FUNC4(peer);
		ino = FUNC1(peer);
		FUNC5(peer);
		FUNC2(peer);

		return FUNC0(nlskb, UNIX_DIAG_PEER, ino);
	}

	return 0;
}