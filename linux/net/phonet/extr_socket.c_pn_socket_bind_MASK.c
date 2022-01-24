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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct socket {struct sock* sk; } ;
struct sockaddr_pn {scalar_t__ spn_family; int /*<<< orphan*/  spn_resource; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; TYPE_1__* sk_prot; } ;
struct pn_sock {int /*<<< orphan*/  resource; int /*<<< orphan*/  sobject; } ;
struct TYPE_2__ {int (* bind ) (struct sock*,struct sockaddr*,int) ;int (* get_port ) (struct sock*,scalar_t__) ;int (* hash ) (struct sock*) ;} ;

/* Variables and functions */
 scalar_t__ AF_PHONET ; 
 int EADDRNOTAVAIL ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 scalar_t__ TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct pn_sock* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr_pn*) ; 
 int /*<<< orphan*/  port_mutex ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int FUNC13 (struct sock*,struct sockaddr*,int) ; 
 int FUNC14 (struct sock*,scalar_t__) ; 
 int FUNC15 (struct sock*) ; 

__attribute__((used)) static int FUNC16(struct socket *sock, struct sockaddr *addr, int len)
{
	struct sock *sk = sock->sk;
	struct pn_sock *pn = FUNC8(sk);
	struct sockaddr_pn *spn = (struct sockaddr_pn *)addr;
	int err;
	u16 handle;
	u8 saddr;

	if (sk->sk_prot->bind)
		return sk->sk_prot->bind(sk, addr, len);

	if (len < sizeof(struct sockaddr_pn))
		return -EINVAL;
	if (spn->spn_family != AF_PHONET)
		return -EAFNOSUPPORT;

	handle = FUNC9((struct sockaddr_pn *)addr);
	saddr = FUNC5(handle);
	if (saddr && FUNC4(FUNC12(sk), saddr))
		return -EADDRNOTAVAIL;

	FUNC1(sk);
	if (sk->sk_state != TCP_CLOSE || FUNC7(pn->sobject)) {
		err = -EINVAL; /* attempt to rebind */
		goto out;
	}
	FUNC0(FUNC11(sk));
	FUNC2(&port_mutex);
	err = sk->sk_prot->get_port(sk, FUNC7(handle));
	if (err)
		goto out_port;

	/* get_port() sets the port, bind() sets the address if applicable */
	pn->sobject = FUNC6(saddr, FUNC7(pn->sobject));
	pn->resource = spn->spn_resource;

	/* Enable RX on the socket */
	err = sk->sk_prot->hash(sk);
out_port:
	FUNC3(&port_mutex);
out:
	FUNC10(sk);
	return err;
}