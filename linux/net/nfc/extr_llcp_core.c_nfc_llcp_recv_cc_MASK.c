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
typedef  int /*<<< orphan*/  u8 ;
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_state; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/ * data; } ;
struct nfc_llcp_sock {int /*<<< orphan*/  dsap; struct sock sk; } ;
struct nfc_llcp_local {int /*<<< orphan*/  sockets; int /*<<< orphan*/  connecting_sockets; } ;

/* Variables and functions */
 int /*<<< orphan*/  LLCP_CONNECTED ; 
 int /*<<< orphan*/  LLCP_DM_NOCONN ; 
 size_t LLCP_HEADER_SIZE ; 
 struct nfc_llcp_sock* FUNC0 (struct nfc_llcp_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfc_llcp_sock*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nfc_llcp_local*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfc_llcp_sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 

__attribute__((used)) static void FUNC10(struct nfc_llcp_local *local, struct sk_buff *skb)
{
	struct nfc_llcp_sock *llcp_sock;
	struct sock *sk;
	u8 dsap, ssap;

	dsap = FUNC1(skb);
	ssap = FUNC7(skb);

	llcp_sock = FUNC0(local, dsap);
	if (llcp_sock == NULL) {
		FUNC8("Invalid CC\n");
		FUNC3(local, dsap, ssap, LLCP_DM_NOCONN);

		return;
	}

	sk = &llcp_sock->sk;

	/* Unlink from connecting and link to the client array */
	FUNC6(&local->connecting_sockets, sk);
	FUNC4(&local->sockets, sk);
	llcp_sock->dsap = ssap;

	FUNC2(llcp_sock, &skb->data[LLCP_HEADER_SIZE],
				      skb->len - LLCP_HEADER_SIZE);

	sk->sk_state = LLCP_CONNECTED;
	sk->sk_state_change(sk);

	FUNC5(llcp_sock);
}