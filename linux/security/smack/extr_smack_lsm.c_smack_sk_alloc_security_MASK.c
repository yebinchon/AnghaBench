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
struct socket_smack {int /*<<< orphan*/ * smk_packet; struct smack_known* smk_out; struct smack_known* smk_in; } ;
struct sock {struct socket_smack* sk_security; } ;
struct smack_known {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int ENOMEM ; 
 int PF_KTHREAD ; 
 TYPE_1__* current ; 
 struct socket_smack* FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct smack_known smack_known_web ; 
 struct smack_known* FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct sock *sk, int family, gfp_t gfp_flags)
{
	struct smack_known *skp = FUNC1();
	struct socket_smack *ssp;

	ssp = FUNC0(sizeof(struct socket_smack), gfp_flags);
	if (ssp == NULL)
		return -ENOMEM;

	/*
	 * Sockets created by kernel threads receive web label.
	 */
	if (FUNC2(current->flags & PF_KTHREAD)) {
		ssp->smk_in = &smack_known_web;
		ssp->smk_out = &smack_known_web;
	} else {
		ssp->smk_in = skp;
		ssp->smk_out = skp;
	}
	ssp->smk_packet = NULL;

	sk->sk_security = ssp;

	return 0;
}