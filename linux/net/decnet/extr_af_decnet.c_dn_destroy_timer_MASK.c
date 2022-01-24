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
struct sock {scalar_t__ sk_socket; } ;
struct dn_scp {int persist; int state; scalar_t__ stamp; int /*<<< orphan*/  nsp_rxtshift; } ;

/* Variables and functions */
 int DN_CN ; 
#define  DN_DI 130 
#define  DN_DN 129 
#define  DN_DR 128 
 int DN_DRC ; 
 struct dn_scp* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HZ ; 
 int /*<<< orphan*/  NSP_DISCCONF ; 
 int /*<<< orphan*/  NSP_DISCINIT ; 
 int /*<<< orphan*/  NSP_REASON_DC ; 
 int /*<<< orphan*/  decnet_di_count ; 
 int /*<<< orphan*/  decnet_dn_count ; 
 int /*<<< orphan*/  decnet_dr_count ; 
 int decnet_time_wait ; 
 int FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC6(struct sock *sk)
{
	struct dn_scp *scp = FUNC0(sk);

	scp->persist = FUNC1(sk);

	switch (scp->state) {
	case DN_DI:
		FUNC2(sk, NSP_DISCINIT, 0, GFP_ATOMIC);
		if (scp->nsp_rxtshift >= decnet_di_count)
			scp->state = DN_CN;
		return 0;

	case DN_DR:
		FUNC2(sk, NSP_DISCINIT, 0, GFP_ATOMIC);
		if (scp->nsp_rxtshift >= decnet_dr_count)
			scp->state = DN_DRC;
		return 0;

	case DN_DN:
		if (scp->nsp_rxtshift < decnet_dn_count) {
			/* printk(KERN_DEBUG "dn_destroy_timer: DN\n"); */
			FUNC2(sk, NSP_DISCCONF, NSP_REASON_DC,
					 GFP_ATOMIC);
			return 0;
		}
	}

	scp->persist = (HZ * decnet_time_wait);

	if (sk->sk_socket)
		return 0;

	if (FUNC5(jiffies, scp->stamp + HZ * decnet_time_wait)) {
		FUNC3(sk);
		FUNC4(sk);
		return 1;
	}

	return 0;
}