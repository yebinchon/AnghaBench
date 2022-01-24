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
typedef  void* u8 ;
struct sk_buff {int dummy; } ;
struct nfc_llcp_ui_cb {void* ssap; void* dsap; } ;
struct TYPE_2__ {scalar_t__ sk_type; } ;
struct nfc_llcp_sock {TYPE_1__ sk; } ;
struct nfc_llcp_local {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LLCP_HEADER_SIZE ; 
 int /*<<< orphan*/  LLCP_SAP_SDP ; 
 scalar_t__ SOCK_DGRAM ; 
 void* FUNC0 (struct sk_buff*) ; 
 struct nfc_llcp_sock* FUNC1 (struct nfc_llcp_local*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfc_llcp_sock*) ; 
 void* FUNC3 (struct sk_buff*) ; 
 struct nfc_llcp_ui_cb* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC10(struct nfc_llcp_local *local,
			     struct sk_buff *skb)
{
	struct nfc_llcp_sock *llcp_sock;
	struct nfc_llcp_ui_cb *ui_cb;
	u8 dsap, ssap;

	dsap = FUNC0(skb);
	ssap = FUNC3(skb);

	ui_cb = FUNC4(skb);
	ui_cb->dsap = dsap;
	ui_cb->ssap = ssap;

	FUNC5("%d %d\n", dsap, ssap);

	/* We're looking for a bound socket, not a client one */
	llcp_sock = FUNC1(local, dsap, LLCP_SAP_SDP);
	if (llcp_sock == NULL || llcp_sock->sk.sk_type != SOCK_DGRAM)
		return;

	/* There is no sequence with UI frames */
	FUNC8(skb, LLCP_HEADER_SIZE);
	if (!FUNC9(&llcp_sock->sk, skb)) {
		/*
		 * UI frames will be freed from the socket layer, so we
		 * need to keep them alive until someone receives them.
		 */
		FUNC7(skb);
	} else {
		FUNC6("Receive queue is full\n");
	}

	FUNC2(llcp_sock);
}