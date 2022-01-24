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
struct socket {struct sock* sk; } ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {scalar_t__ nlbl_state; } ;
struct netlbl_lsm_secattr {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int ENOMSG ; 
 scalar_t__ NLBL_CONNLABELED ; 
 scalar_t__ NLBL_LABELED ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct netlbl_lsm_secattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct netlbl_lsm_secattr*) ; 
 int FUNC3 (struct sock*,struct netlbl_lsm_secattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (int,int) ; 

int FUNC6(struct socket *sock,
				     int level,
				     int optname)
{
	int rc = 0;
	struct sock *sk = sock->sk;
	struct sk_security_struct *sksec = sk->sk_security;
	struct netlbl_lsm_secattr secattr;

	if (FUNC5(level, optname) &&
	    (sksec->nlbl_state == NLBL_LABELED ||
	     sksec->nlbl_state == NLBL_CONNLABELED)) {
		FUNC2(&secattr);
		FUNC0(sk);
		/* call the netlabel function directly as we want to see the
		 * on-the-wire label that is assigned via the socket's options
		 * and not the cached netlabel/lsm attributes */
		rc = FUNC3(sk, &secattr);
		FUNC4(sk);
		if (rc == 0)
			rc = -EACCES;
		else if (rc == -ENOMSG)
			rc = 0;
		FUNC1(&secattr);
	}

	return rc;
}