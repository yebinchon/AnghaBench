#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sin_port; } ;
union sctp_addr {TYPE_2__ v4; } ;
struct sock {int dummy; } ;
struct sctp_af {int /*<<< orphan*/  (* from_sk ) (union sctp_addr*,struct sock*) ;} ;
struct TYPE_6__ {TYPE_1__* pf; } ;
struct TYPE_4__ {struct sctp_af* af; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned short) ; 
 int FUNC1 (struct sock*,union sctp_addr*) ; 
 TYPE_3__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (union sctp_addr*,struct sock*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, unsigned short snum)
{
	union sctp_addr addr;
	struct sctp_af *af = FUNC2(sk)->pf->af;

	/* Set up a dummy address struct from the sk. */
	af->from_sk(&addr, sk);
	addr.v4.sin_port = FUNC0(snum);

	/* Note: sk->sk_num gets filled in if ephemeral port request. */
	return FUNC1(sk, &addr);
}