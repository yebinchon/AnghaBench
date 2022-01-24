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
struct xt_socket_mtinfo1 {int flags; } ;
struct xt_action_param {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_mark; } ;
struct sk_buff {struct sock* sk; int /*<<< orphan*/  mark; } ;
struct TYPE_2__ {scalar_t__ inet_rcv_saddr; } ;

/* Variables and functions */
 int XT_SOCKET_NOWILDCARD ; 
 int XT_SOCKET_RESTORESKMARK ; 
 int XT_SOCKET_TRANSPARENT ; 
 TYPE_1__* FUNC0 (struct sock*) ; 
 int FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sock* FUNC3 (int /*<<< orphan*/ ,struct sk_buff const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct xt_action_param*) ; 
 int /*<<< orphan*/  FUNC8 (struct xt_action_param*) ; 

__attribute__((used)) static bool
FUNC9(const struct sk_buff *skb, struct xt_action_param *par,
	     const struct xt_socket_mtinfo1 *info)
{
	struct sk_buff *pskb = (struct sk_buff *)skb;
	struct sock *sk = skb->sk;

	if (sk && !FUNC2(FUNC8(par), FUNC6(sk)))
		sk = NULL;

	if (!sk)
		sk = FUNC3(FUNC8(par), skb, FUNC7(par));

	if (sk) {
		bool wildcard;
		bool transparent = true;

		/* Ignore sockets listening on INADDR_ANY,
		 * unless XT_SOCKET_NOWILDCARD is set
		 */
		wildcard = (!(info->flags & XT_SOCKET_NOWILDCARD) &&
			    FUNC4(sk) &&
			    FUNC0(sk)->inet_rcv_saddr == 0);

		/* Ignore non-transparent sockets,
		 * if XT_SOCKET_TRANSPARENT is used
		 */
		if (info->flags & XT_SOCKET_TRANSPARENT)
			transparent = FUNC1(sk);

		if (info->flags & XT_SOCKET_RESTORESKMARK && !wildcard &&
		    transparent && FUNC4(sk))
			pskb->mark = sk->sk_mark;

		if (sk != skb->sk)
			FUNC5(sk);

		if (wildcard || !transparent)
			sk = NULL;
	}

	return sk != NULL;
}