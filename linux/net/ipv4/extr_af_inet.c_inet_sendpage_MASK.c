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
struct socket {struct sock* sk; } ;
struct sock {TYPE_1__* sk_prot; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* sendpage ) (struct sock*,struct page*,int,size_t,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,struct page*,int,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct page*,int,size_t,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

ssize_t FUNC4(struct socket *sock, struct page *page, int offset,
		      size_t size, int flags)
{
	struct sock *sk = sock->sk;

	if (FUNC3(FUNC0(sk)))
		return -EAGAIN;

	if (sk->sk_prot->sendpage)
		return sk->sk_prot->sendpage(sk, page, offset, size, flags);
	return FUNC1(sock, page, offset, size, flags);
}