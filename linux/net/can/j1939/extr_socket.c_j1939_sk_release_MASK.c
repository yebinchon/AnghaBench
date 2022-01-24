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
struct sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sa; int /*<<< orphan*/  src_name; } ;
struct j1939_sock {int state; int /*<<< orphan*/  filters; TYPE_1__ addr; int /*<<< orphan*/  sk; int /*<<< orphan*/  waitq; struct j1939_priv* priv; } ;
struct j1939_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESHUTDOWN ; 
 int J1939_SOCK_BOUND ; 
 int /*<<< orphan*/  FUNC0 (struct j1939_priv*,struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct j1939_priv*,struct j1939_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct j1939_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct j1939_priv*) ; 
 struct j1939_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct j1939_priv*,struct j1939_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct j1939_sock *jsk;

	if (!sk)
		return 0;

	jsk = FUNC4(sk);
	FUNC8(sk);

	if (jsk->state & J1939_SOCK_BOUND) {
		struct j1939_priv *priv = jsk->priv;

		if (FUNC12(jsk->waitq,
					     !FUNC6(&jsk->sk))) {
			FUNC0(priv, sk);
			FUNC5(priv, jsk, ESHUTDOWN);
		}

		FUNC1(priv, jsk);

		FUNC2(priv, jsk->addr.src_name,
				    jsk->addr.sa);

		FUNC3(priv);
	}

	FUNC7(jsk->filters);
	FUNC10(sk);
	sock->sk = NULL;

	FUNC9(sk);
	FUNC11(sk);

	return 0;
}