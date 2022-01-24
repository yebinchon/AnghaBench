#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sock {TYPE_5__* sk_prot; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_7__ {TYPE_1__ sin_addr; } ;
struct TYPE_8__ {TYPE_2__ v4; } ;
struct TYPE_9__ {TYPE_3__ primary_addr; } ;
struct sctp_association {TYPE_4__ peer; } ;
struct inet_sock {int /*<<< orphan*/  inet_daddr; } ;
struct TYPE_10__ {scalar_t__ (* init ) (struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 struct inet_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sock*,struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sock*) ; 
 struct sock* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sock*) ; 

__attribute__((used)) static struct sock *FUNC10(struct sock *sk,
					     struct sctp_association *asoc,
					     bool kern)
{
	struct sock *newsk = FUNC3(FUNC7(sk), PF_INET, GFP_KERNEL,
			sk->sk_prot, kern);
	struct inet_sock *newinet;

	if (!newsk)
		goto out;

	FUNC6(NULL, newsk);

	FUNC1(newsk, sk, asoc);
	FUNC8(newsk, SOCK_ZAPPED);

	FUNC2(sk, newsk);

	newinet = FUNC0(newsk);

	newinet->inet_daddr = asoc->peer.primary_addr.v4.sin_addr.s_addr;

	FUNC5(newsk);

	if (newsk->sk_prot->init(newsk)) {
		FUNC4(newsk);
		newsk = NULL;
	}

out:
	return newsk;
}