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
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_bound_dev_if; } ;
struct inet_sock {scalar_t__ inet_saddr; scalar_t__ inet_rcv_saddr; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int RTN_BROADCAST ; 
 int RTN_LOCAL ; 
 int RTN_MULTICAST ; 
 int /*<<< orphan*/  RT_TABLE_LOCAL ; 
 scalar_t__ TCP_CLOSE ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

__attribute__((used)) static int FUNC5(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
	struct inet_sock *inet = FUNC1(sk);
	struct sockaddr_in *addr = (struct sockaddr_in *) uaddr;
	u32 tb_id = RT_TABLE_LOCAL;
	int ret = -EINVAL;
	int chk_addr_ret;

	if (sk->sk_state != TCP_CLOSE || addr_len < sizeof(struct sockaddr_in))
		goto out;

	if (sk->sk_bound_dev_if)
		tb_id = FUNC2(FUNC4(sk),
						 sk->sk_bound_dev_if) ? : tb_id;

	chk_addr_ret = FUNC0(FUNC4(sk), addr->sin_addr.s_addr,
					    tb_id);

	ret = -EADDRNOTAVAIL;
	if (addr->sin_addr.s_addr && chk_addr_ret != RTN_LOCAL &&
	    chk_addr_ret != RTN_MULTICAST && chk_addr_ret != RTN_BROADCAST)
		goto out;
	inet->inet_rcv_saddr = inet->inet_saddr = addr->sin_addr.s_addr;
	if (chk_addr_ret == RTN_MULTICAST || chk_addr_ret == RTN_BROADCAST)
		inet->inet_saddr = 0;  /* Use device */
	FUNC3(sk);
	ret = 0;
out:	return ret;
}