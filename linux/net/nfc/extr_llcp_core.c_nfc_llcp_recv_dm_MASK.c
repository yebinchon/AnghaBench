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
typedef  int u8 ;
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_state; int /*<<< orphan*/  sk_err; } ;
struct sk_buff {int* data; } ;
struct nfc_llcp_sock {struct sock sk; } ;
struct nfc_llcp_local {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  LLCP_CLOSED ; 
#define  LLCP_DM_NOBOUND 129 
#define  LLCP_DM_REJ 128 
 struct nfc_llcp_sock* FUNC0 (struct nfc_llcp_local*,int) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct nfc_llcp_sock* FUNC2 (struct nfc_llcp_local*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfc_llcp_sock*) ; 
 int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static void FUNC7(struct nfc_llcp_local *local, struct sk_buff *skb)
{
	struct nfc_llcp_sock *llcp_sock;
	struct sock *sk;
	u8 dsap, ssap, reason;

	dsap = FUNC1(skb);
	ssap = FUNC4(skb);
	reason = skb->data[2];

	FUNC5("%d %d reason %d\n", ssap, dsap, reason);

	switch (reason) {
	case LLCP_DM_NOBOUND:
	case LLCP_DM_REJ:
		llcp_sock = FUNC0(local, dsap);
		break;

	default:
		llcp_sock = FUNC2(local, dsap, ssap);
		break;
	}

	if (llcp_sock == NULL) {
		FUNC5("Already closed\n");
		return;
	}

	sk = &llcp_sock->sk;

	sk->sk_err = ENXIO;
	sk->sk_state = LLCP_CLOSED;
	sk->sk_state_change(sk);

	FUNC3(llcp_sock);
}