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
struct udphdr {int dummy; } ;
struct socket {struct sock* sk; } ;
struct sock {int sk_state; } ;
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct msghdr {int dummy; } ;
struct l2tp_tunnel {scalar_t__ encap; } ;
struct l2tp_session {int hdr_len; struct l2tp_tunnel* tunnel; } ;
struct iphdr {int dummy; } ;

/* Variables and functions */
 int EBADF ; 
 int ENOMEM ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ L2TP_ENCAPTYPE_UDP ; 
 int NET_SKB_PAD ; 
 int PPPOX_CONNECTED ; 
 int /*<<< orphan*/  PPP_ALLSTATIONS ; 
 int /*<<< orphan*/  PPP_UI ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct l2tp_session*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,struct msghdr*,size_t) ; 
 struct l2tp_session* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 struct sk_buff* FUNC12 (struct sock*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct socket *sock, struct msghdr *m,
			    size_t total_len)
{
	struct sock *sk = sock->sk;
	struct sk_buff *skb;
	int error;
	struct l2tp_session *session;
	struct l2tp_tunnel *tunnel;
	int uhlen;

	error = -ENOTCONN;
	if (FUNC10(sk, SOCK_DEAD) || !(sk->sk_state & PPPOX_CONNECTED))
		goto error;

	/* Get session and tunnel contexts */
	error = -EBADF;
	session = FUNC5(sk);
	if (session == NULL)
		goto error;

	tunnel = session->tunnel;

	uhlen = (tunnel->encap == L2TP_ENCAPTYPE_UDP) ? sizeof(struct udphdr) : 0;

	/* Allocate a socket buffer */
	error = -ENOMEM;
	skb = FUNC12(sk, NET_SKB_PAD + sizeof(struct iphdr) +
			   uhlen + session->hdr_len +
			   2 + total_len, /* 2 bytes for PPP_ALLSTATIONS & PPP_UI */
			   0, GFP_KERNEL);
	if (!skb)
		goto error_put_sess;

	/* Reserve space for headers. */
	FUNC7(skb, NET_SKB_PAD);
	FUNC8(skb);
	FUNC7(skb, sizeof(struct iphdr));
	FUNC9(skb);
	FUNC7(skb, uhlen);

	/* Add PPP header */
	skb->data[0] = PPP_ALLSTATIONS;
	skb->data[1] = PPP_UI;
	FUNC6(skb, 2);

	/* Copy user data into skb */
	error = FUNC4(FUNC6(skb, total_len), m, total_len);
	if (error < 0) {
		FUNC0(skb);
		goto error_put_sess;
	}

	FUNC2();
	FUNC1(session, skb, session->hdr_len);
	FUNC3();

	FUNC11(sk);

	return total_len;

error_put_sess:
	FUNC11(sk);
error:
	return error;
}