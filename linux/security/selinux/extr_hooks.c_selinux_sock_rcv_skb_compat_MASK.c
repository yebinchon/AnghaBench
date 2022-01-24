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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int /*<<< orphan*/  sid; } ;
struct sk_buff {int /*<<< orphan*/  secmark; int /*<<< orphan*/  skb_iif; } ;
struct lsm_network_audit {int /*<<< orphan*/  family; int /*<<< orphan*/  netif; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {struct lsm_network_audit* net; } ;
struct common_audit_data {TYPE_1__ u; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  LSM_AUDIT_DATA_NET ; 
 int /*<<< orphan*/  PACKET__RECV ; 
 int /*<<< orphan*/  SECCLASS_PACKET ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 int FUNC1 (struct sk_security_struct*,struct sk_buff*,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 int FUNC2 (struct sk_buff*,struct common_audit_data*,char**,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  selinux_state ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,struct common_audit_data*) ; 

__attribute__((used)) static int FUNC5(struct sock *sk, struct sk_buff *skb,
				       u16 family)
{
	int err = 0;
	struct sk_security_struct *sksec = sk->sk_security;
	u32 sk_sid = sksec->sid;
	struct common_audit_data ad;
	struct lsm_network_audit net = {0,};
	char *addrp;

	ad.type = LSM_AUDIT_DATA_NET;
	ad.u.net = &net;
	ad.u.net->netif = skb->skb_iif;
	ad.u.net->family = family;
	err = FUNC2(skb, &ad, &addrp, 1, NULL);
	if (err)
		return err;

	if (FUNC3()) {
		err = FUNC0(&selinux_state,
				   sk_sid, skb->secmark, SECCLASS_PACKET,
				   PACKET__RECV, &ad);
		if (err)
			return err;
	}

	err = FUNC1(sksec, skb, family, &ad);
	if (err)
		return err;
	err = FUNC4(sksec->sid, skb, &ad);

	return err;
}