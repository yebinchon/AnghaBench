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
struct socket_smack {struct smack_known* smk_out; } ;
struct sock {int /*<<< orphan*/  sk_family; struct socket_smack* sk_security; } ;
struct smack_known {int /*<<< orphan*/  smk_netlabel; } ;

/* Variables and functions */
 int SMACK_UNLABELED_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int FUNC5 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct smack_known* smack_net_ambient ; 

__attribute__((used)) static int FUNC6(struct sock *sk, int labeled)
{
	struct smack_known *skp;
	struct socket_smack *ssp = sk->sk_security;
	int rc = 0;

	/*
	 * Usually the netlabel code will handle changing the
	 * packet labeling based on the label.
	 * The case of a single label host is different, because
	 * a single label host should never get a labeled packet
	 * even though the label is usually associated with a packet
	 * label.
	 */
	FUNC2();
	FUNC0(sk);

	if (ssp->smk_out == smack_net_ambient ||
	    labeled == SMACK_UNLABELED_SOCKET)
		FUNC4(sk);
	else {
		skp = ssp->smk_out;
		rc = FUNC5(sk, sk->sk_family, &skp->smk_netlabel);
	}

	FUNC1(sk);
	FUNC3();

	return rc;
}