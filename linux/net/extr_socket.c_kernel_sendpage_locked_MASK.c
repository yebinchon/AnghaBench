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
struct socket {TYPE_1__* ops; } ;
struct sock {struct socket* sk_socket; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int (* sendpage_locked ) (struct sock*,struct page*,int,size_t,int) ;} ;

/* Variables and functions */
 int FUNC0 (struct sock*,struct page*,int,size_t,int) ; 
 int FUNC1 (struct sock*,struct page*,int,size_t,int) ; 

int FUNC2(struct sock *sk, struct page *page, int offset,
			   size_t size, int flags)
{
	struct socket *sock = sk->sk_socket;

	if (sock->ops->sendpage_locked)
		return sock->ops->sendpage_locked(sk, page, offset, size,
						  flags);

	return FUNC0(sk, page, offset, size, flags);
}