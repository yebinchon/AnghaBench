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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_family; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sk_security_struct {int /*<<< orphan*/  nlbl_state; } ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {TYPE_3__* sk; } ;
struct sctp_endpoint {TYPE_2__ base; int /*<<< orphan*/  secid; } ;
struct netlbl_lsm_secattr {int dummy; } ;
struct TYPE_10__ {int version; int /*<<< orphan*/  saddr; } ;
struct TYPE_9__ {int /*<<< orphan*/  saddr; } ;
struct TYPE_8__ {scalar_t__ sk_family; struct sk_security_struct* sk_security; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  CONFIG_IPV6 ; 
 int EAFNOSUPPORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLBL_LABELED ; 
 scalar_t__ PF_INET ; 
 scalar_t__ PF_INET6 ; 
 TYPE_5__* FUNC1 (struct sk_buff*) ; 
 TYPE_4__* FUNC2 (struct sk_buff*) ; 
 int FUNC3 (TYPE_3__*,void*,struct netlbl_lsm_secattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct netlbl_lsm_secattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct netlbl_lsm_secattr*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct netlbl_lsm_secattr*) ; 
 int /*<<< orphan*/  selinux_state ; 

int FUNC7(struct sctp_endpoint *ep,
				     struct sk_buff *skb)
{
	int rc;
	struct netlbl_lsm_secattr secattr;
	struct sk_security_struct *sksec = ep->base.sk->sk_security;
	struct sockaddr_in addr4;
	struct sockaddr_in6 addr6;

	if (ep->base.sk->sk_family != PF_INET &&
				ep->base.sk->sk_family != PF_INET6)
		return 0;

	FUNC5(&secattr);
	rc = FUNC6(&selinux_state,
					    ep->secid, &secattr);
	if (rc != 0)
		goto assoc_request_return;

	/* Move skb hdr address info to a struct sockaddr and then call
	 * netlbl_conn_setattr().
	 */
	if (FUNC1(skb)->version == 4) {
		addr4.sin_family = AF_INET;
		addr4.sin_addr.s_addr = FUNC1(skb)->saddr;
		rc = FUNC3(ep->base.sk, (void *)&addr4, &secattr);
	} else if (FUNC0(CONFIG_IPV6) && FUNC1(skb)->version == 6) {
		addr6.sin6_family = AF_INET6;
		addr6.sin6_addr = FUNC2(skb)->saddr;
		rc = FUNC3(ep->base.sk, (void *)&addr6, &secattr);
	} else {
		rc = -EAFNOSUPPORT;
	}

	if (rc == 0)
		sksec->nlbl_state = NLBL_LABELED;

assoc_request_return:
	FUNC4(&secattr);
	return rc;
}