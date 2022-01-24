#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int sk_state; int /*<<< orphan*/  sk_socket; } ;
struct TYPE_5__ {int /*<<< orphan*/ * hcon; } ;
struct TYPE_4__ {TYPE_2__* conn; } ;

/* Variables and functions */
#define  BT_CONFIG 133 
#define  BT_CONNECT 132 
#define  BT_CONNECT2 131 
#define  BT_CONNECTED 130 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int,int /*<<< orphan*/ ) ; 
#define  BT_DISCONN 129 
#define  BT_LISTEN 128 
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  SCO_DISCONN_TIMEOUT ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_1__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct sock *sk)
{
	FUNC0("sk %p state %d socket %p", sk, sk->sk_state, sk->sk_socket);

	switch (sk->sk_state) {
	case BT_LISTEN:
		FUNC6(sk);
		break;

	case BT_CONNECTED:
	case BT_CONFIG:
		if (FUNC5(sk)->conn->hcon) {
			sk->sk_state = BT_DISCONN;
			FUNC7(sk, SCO_DISCONN_TIMEOUT);
			FUNC3(FUNC5(sk)->conn);
			FUNC1(FUNC5(sk)->conn->hcon);
			FUNC5(sk)->conn->hcon = NULL;
			FUNC4(FUNC5(sk)->conn);
		} else
			FUNC2(sk, ECONNRESET);
		break;

	case BT_CONNECT2:
	case BT_CONNECT:
	case BT_DISCONN:
		FUNC2(sk, ECONNRESET);
		break;

	default:
		FUNC8(sk, SOCK_ZAPPED);
		break;
	}
}