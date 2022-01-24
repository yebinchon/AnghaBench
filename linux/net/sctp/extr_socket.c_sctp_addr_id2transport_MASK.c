#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union sctp_addr {int dummy; } sctp_addr ;
struct sockaddr_storage {int /*<<< orphan*/  ss_family; } ;
struct sock {int /*<<< orphan*/  sk_family; } ;
struct sctp_transport {int dummy; } ;
struct sctp_association {int dummy; } ;
struct sctp_af {int /*<<< orphan*/  sockaddr_len; } ;
typedef  int /*<<< orphan*/  sctp_assoc_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* addr_to_user ) (TYPE_1__*,union sctp_addr*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  ep; } ;

/* Variables and functions */
 struct sctp_association* FUNC0 (int /*<<< orphan*/ ,union sctp_addr*,struct sctp_transport**) ; 
 struct sctp_af* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sctp_association* FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct sock*,union sctp_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,union sctp_addr*) ; 

__attribute__((used)) static struct sctp_transport *FUNC7(struct sock *sk,
					      struct sockaddr_storage *addr,
					      sctp_assoc_t id)
{
	struct sctp_association *addr_asoc = NULL, *id_asoc = NULL;
	struct sctp_af *af = FUNC1(addr->ss_family);
	union sctp_addr *laddr = (union sctp_addr *)addr;
	struct sctp_transport *transport;

	if (!af || FUNC5(sk, laddr, af->sockaddr_len))
		return NULL;

	addr_asoc = FUNC0(FUNC4(sk)->ep,
					       laddr,
					       &transport);

	if (!addr_asoc)
		return NULL;

	id_asoc = FUNC3(sk, id);
	if (id_asoc && (id_asoc != addr_asoc))
		return NULL;

	FUNC2(sk->sk_family)->addr_to_user(FUNC4(sk),
						(union sctp_addr *)addr);

	return transport;
}