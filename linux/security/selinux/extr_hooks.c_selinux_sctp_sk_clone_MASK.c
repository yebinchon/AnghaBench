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
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int /*<<< orphan*/  sclass; int /*<<< orphan*/  peer_sid; int /*<<< orphan*/  sid; } ;
struct sctp_endpoint {int /*<<< orphan*/  peer_secid; int /*<<< orphan*/  secid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void FUNC2 (struct sock*,struct sock*) ; 

__attribute__((used)) static void FUNC3(struct sctp_endpoint *ep, struct sock *sk,
				  struct sock *newsk)
{
	struct sk_security_struct *sksec = sk->sk_security;
	struct sk_security_struct *newsksec = newsk->sk_security;

	/* If policy does not support SECCLASS_SCTP_SOCKET then call
	 * the non-sctp clone version.
	 */
	if (!FUNC1())
		return FUNC2(sk, newsk);

	newsksec->sid = ep->secid;
	newsksec->peer_sid = ep->peer_secid;
	newsksec->sclass = sksec->sclass;
	FUNC0(sk, newsk);
}