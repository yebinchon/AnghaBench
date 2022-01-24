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
typedef  scalar_t__ u8 ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;} ;
struct sk_buff {int dummy; } ;
struct nfc_llcp_sock {struct sock sk; } ;
struct nfc_llcp_local {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ LLCP_CLOSED ; 
 scalar_t__ LLCP_CONNECTED ; 
 int /*<<< orphan*/  LLCP_DM_DISC ; 
 int /*<<< orphan*/  LLCP_DM_NOCONN ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfc_llcp_local*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct nfc_llcp_sock* FUNC4 (struct nfc_llcp_local*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct nfc_llcp_sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfc_llcp_sock*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 

__attribute__((used)) static void FUNC12(struct nfc_llcp_local *local,
			       struct sk_buff *skb)
{
	struct nfc_llcp_sock *llcp_sock;
	struct sock *sk;
	u8 dsap, ssap;

	dsap = FUNC2(skb);
	ssap = FUNC7(skb);

	if ((dsap == 0) && (ssap == 0)) {
		FUNC9("Connection termination");
		FUNC1(local->dev);
		return;
	}

	llcp_sock = FUNC4(local, dsap, ssap);
	if (llcp_sock == NULL) {
		FUNC3(local, dsap, ssap, LLCP_DM_NOCONN);
		return;
	}

	sk = &llcp_sock->sk;
	FUNC0(sk);

	FUNC6(llcp_sock);

	if (sk->sk_state == LLCP_CLOSED) {
		FUNC10(sk);
		FUNC5(llcp_sock);
	}

	if (sk->sk_state == LLCP_CONNECTED) {
		FUNC8(local->dev);
		sk->sk_state = LLCP_CLOSED;
		sk->sk_state_change(sk);
	}

	FUNC3(local, dsap, ssap, LLCP_DM_DISC);

	FUNC10(sk);
	FUNC5(llcp_sock);
}