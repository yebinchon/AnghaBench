#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pacsize_out; } ;
struct x25_sock {TYPE_2__* neighbour; TYPE_1__ facilities; } ;
struct sock {int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {int len; int /*<<< orphan*/ * data; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {scalar_t__ extended; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int MSG_DONTWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,char*,int,int) ; 
 int X25_EXT_MIN_LEN ; 
 int /*<<< orphan*/  X25_EXT_M_BIT ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 int X25_STD_MIN_LEN ; 
 int /*<<< orphan*/  X25_STD_M_BIT ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,unsigned char*,int) ; 
 int FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 unsigned char* FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC13 (struct sock*,int,int,int*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 struct x25_sock* FUNC15 (struct sock*) ; 

int FUNC16(struct sock *sk, struct sk_buff *skb)
{
	struct sk_buff *skbn;
	unsigned char header[X25_EXT_MIN_LEN];
	int err, frontlen, len;
	int sent=0, noblock = FUNC1(skb)->flags & MSG_DONTWAIT;
	struct x25_sock *x25 = FUNC15(sk);
	int header_len = x25->neighbour->extended ? X25_EXT_MIN_LEN :
						    X25_STD_MIN_LEN;
	int max_len = FUNC14(x25->facilities.pacsize_out);

	if (skb->len - header_len > max_len) {
		/* Save a copy of the Header */
		FUNC5(skb, header, header_len);
		FUNC8(skb, header_len);

		frontlen = FUNC7(skb);

		while (skb->len > 0) {
			FUNC4(sk);
			skbn = FUNC13(sk, frontlen + max_len,
						   noblock, &err);
			FUNC3(sk);
			if (!skbn) {
				if (err == -EWOULDBLOCK && noblock){
					FUNC2(skb);
					return sent;
				}
				FUNC0(sk, "x25_output: fragment alloc"
					       " failed, err=%d, %d bytes "
					       "sent\n", err, sent);
				return err;
			}

			FUNC12(skbn, frontlen);

			len = max_len > skb->len ? skb->len : max_len;

			/* Copy the user data */
			FUNC5(skb, FUNC10(skbn, len), len);
			FUNC8(skb, len);

			/* Duplicate the Header */
			FUNC9(skbn, header_len);
			FUNC6(skbn, header, header_len);

			if (skb->len > 0) {
				if (x25->neighbour->extended)
					skbn->data[3] |= X25_EXT_M_BIT;
				else
					skbn->data[2] |= X25_STD_M_BIT;
			}

			FUNC11(&sk->sk_write_queue, skbn);
			sent += len;
		}

		FUNC2(skb);
	} else {
		FUNC11(&sk->sk_write_queue, skb);
		sent = skb->len - header_len;
	}
	return sent;
}