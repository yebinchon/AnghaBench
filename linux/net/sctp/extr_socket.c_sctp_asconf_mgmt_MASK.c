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
struct TYPE_9__ {int /*<<< orphan*/  sa_family; } ;
struct TYPE_10__ {int /*<<< orphan*/  sin_port; } ;
union sctp_addr {TYPE_4__ sa; TYPE_5__ v4; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct sctp_sockaddr_entry {scalar_t__ state; union sctp_addr a; } ;
struct sctp_sock {TYPE_3__* ep; } ;
struct sctp_af {int /*<<< orphan*/  sockaddr_len; } ;
struct TYPE_6__ {int /*<<< orphan*/  port; } ;
struct TYPE_7__ {TYPE_1__ bind_addr; } ;
struct TYPE_8__ {TYPE_2__ base; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SCTP_ADDR_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sctp_af* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sock* FUNC2 (struct sctp_sock*) ; 
 int FUNC3 (struct sock*,struct sockaddr*,int) ; 
 int FUNC4 (struct sock*,struct sockaddr*,int) ; 
 scalar_t__ FUNC5 (struct sock*,union sctp_addr*,int /*<<< orphan*/ ) ; 

int FUNC6(struct sctp_sock *sp, struct sctp_sockaddr_entry *addrw)
{
	struct sock *sk = FUNC2(sp);
	union sctp_addr *addr;
	struct sctp_af *af;

	/* It is safe to write port space in caller. */
	addr = &addrw->a;
	addr->v4.sin_port = FUNC0(sp->ep->base.bind_addr.port);
	af = FUNC1(addr->sa.sa_family);
	if (!af)
		return -EINVAL;
	if (FUNC5(sk, addr, af->sockaddr_len))
		return -EINVAL;

	if (addrw->state == SCTP_ADDR_NEW)
		return FUNC3(sk, (struct sockaddr *)addr, 1);
	else
		return FUNC4(sk, (struct sockaddr *)addr, 1);
}