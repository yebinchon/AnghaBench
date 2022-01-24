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
struct sock {int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_state; } ;
struct sk_buff {unsigned short* data; int len; int /*<<< orphan*/  destructor; struct sock* sk; } ;
struct nr_sock {int bpqext; unsigned short your_index; unsigned short your_id; int my_index; int my_id; unsigned short window; unsigned short t1; int condition; int /*<<< orphan*/  state; scalar_t__ vl; scalar_t__ vr; scalar_t__ va; scalar_t__ vs; void* user_addr; void* dest_addr; void* source_addr; } ;
struct net_device {int dummy; } ;
typedef  void* ax25_address ;

/* Variables and functions */
 unsigned short HZ ; 
 unsigned short NR_CHOKE_FLAG ; 
 unsigned short NR_CONNACK ; 
 unsigned short NR_CONNREQ ; 
 scalar_t__ NR_NETWORK_LEN ; 
 unsigned short NR_PROTOEXT ; 
 unsigned short NR_PROTO_IP ; 
 unsigned short NR_RESET ; 
 int /*<<< orphan*/  NR_STATE_3 ; 
 scalar_t__ NR_TRANSPORT_LEN ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int circuit ; 
 struct sock* FUNC2 (void**) ; 
 int FUNC3 () ; 
 struct sock* FUNC4 (unsigned short,unsigned short,void**) ; 
 struct sock* FUNC5 (unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 struct sock* FUNC7 (struct sock*) ; 
 int FUNC8 (struct sock*,struct sk_buff*) ; 
 int FUNC9 (struct sk_buff*,struct net_device*) ; 
 struct nr_sock* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,unsigned short) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 scalar_t__ FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  sock_efree ; 
 int /*<<< orphan*/  FUNC22 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*) ; 
 int /*<<< orphan*/  FUNC24 (struct sock*) ; 
 int /*<<< orphan*/  FUNC25 (struct sock*) ; 
 scalar_t__ sysctl_netrom_reset_circuit ; 

int FUNC26(struct sk_buff *skb, struct net_device *dev)
{
	struct sock *sk;
	struct sock *make;
	struct nr_sock *nr_make;
	ax25_address *src, *dest, *user;
	unsigned short circuit_index, circuit_id;
	unsigned short peer_circuit_index, peer_circuit_id;
	unsigned short frametype, flags, window, timeout;
	int ret;

	FUNC18(skb);

	/*
	 *	skb->data points to the netrom frame start
	 */

	src  = (ax25_address *)(skb->data + 0);
	dest = (ax25_address *)(skb->data + 7);

	circuit_index      = skb->data[15];
	circuit_id         = skb->data[16];
	peer_circuit_index = skb->data[17];
	peer_circuit_id    = skb->data[18];
	frametype          = skb->data[19] & 0x0F;
	flags              = skb->data[19] & 0xF0;

	/*
	 * Check for an incoming IP over NET/ROM frame.
	 */
	if (frametype == NR_PROTOEXT &&
	    circuit_index == NR_PROTO_IP && circuit_id == NR_PROTO_IP) {
		FUNC19(skb, NR_NETWORK_LEN + NR_TRANSPORT_LEN);
		FUNC21(skb);

		return FUNC9(skb, dev);
	}

	/*
	 * Find an existing socket connection, based on circuit ID, if it's
	 * a Connect Request base it on their circuit ID.
	 *
	 * Circuit ID 0/0 is not valid but it could still be a "reset" for a
	 * circuit that no longer exists at the other end ...
	 */

	sk = NULL;

	if (circuit_index == 0 && circuit_id == 0) {
		if (frametype == NR_CONNACK && flags == NR_CHOKE_FLAG)
			sk = FUNC4(peer_circuit_index, peer_circuit_id, src);
	} else {
		if (frametype == NR_CONNREQ)
			sk = FUNC4(circuit_index, circuit_id, src);
		else
			sk = FUNC5(circuit_index, circuit_id);
	}

	if (sk != NULL) {
		FUNC0(sk);
		FUNC21(skb);

		if (frametype == NR_CONNACK && skb->len == 22)
			FUNC10(sk)->bpqext = 1;
		else
			FUNC10(sk)->bpqext = 0;

		ret = FUNC8(sk, skb);
		FUNC1(sk);
		FUNC24(sk);
		return ret;
	}

	/*
	 * Now it should be a CONNREQ.
	 */
	if (frametype != NR_CONNREQ) {
		/*
		 * Here it would be nice to be able to send a reset but
		 * NET/ROM doesn't have one.  We've tried to extend the protocol
		 * by sending NR_CONNACK | NR_CHOKE_FLAGS replies but that
		 * apparently kills BPQ boxes... :-(
		 * So now we try to follow the established behaviour of
		 * G8PZT's Xrouter which is sending packets with command type 7
		 * as an extension of the protocol.
		 */
		if (sysctl_netrom_reset_circuit &&
		    (frametype != NR_RESET || flags != 0))
			FUNC14(skb, 1);

		return 0;
	}

	sk = FUNC2(dest);

	user = (ax25_address *)(skb->data + 21);

	if (sk == NULL || FUNC17(sk) ||
	    (make = FUNC7(sk)) == NULL) {
		FUNC13(skb, 0);
		if (sk)
			FUNC24(sk);
		return 0;
	}

	FUNC0(sk);

	window = skb->data[20];

	FUNC23(make);
	skb->sk             = make;
	skb->destructor     = sock_efree;
	make->sk_state	    = TCP_ESTABLISHED;

	/* Fill in his circuit details */
	nr_make = FUNC10(make);
	nr_make->source_addr = *dest;
	nr_make->dest_addr   = *src;
	nr_make->user_addr   = *user;

	nr_make->your_index  = circuit_index;
	nr_make->your_id     = circuit_id;

	FUNC1(sk);
	circuit = FUNC3();
	FUNC0(sk);

	nr_make->my_index    = circuit / 256;
	nr_make->my_id       = circuit % 256;

	circuit++;

	/* Window negotiation */
	if (window < nr_make->window)
		nr_make->window = window;

	/* L4 timeout negotiation */
	if (skb->len == 37) {
		timeout = skb->data[36] * 256 + skb->data[35];
		if (timeout * HZ < nr_make->t1)
			nr_make->t1 = timeout * HZ;
		nr_make->bpqext = 1;
	} else {
		nr_make->bpqext = 0;
	}

	FUNC15(make, NR_CONNACK);

	nr_make->condition = 0x00;
	nr_make->vs        = 0;
	nr_make->va        = 0;
	nr_make->vr        = 0;
	nr_make->vl        = 0;
	nr_make->state     = NR_STATE_3;
	FUNC16(sk);
	FUNC20(&sk->sk_receive_queue, skb);

	if (!FUNC22(sk, SOCK_DEAD))
		sk->sk_data_ready(sk);

	FUNC1(sk);
	FUNC24(sk);

	FUNC6(make);

	FUNC11(make);
	FUNC12(make);

	return 1;
}