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
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
#define  X25_CLEAR_CONFIRMATION 129 
#define  X25_CLEAR_REQUEST 128 
 int /*<<< orphan*/  X25_STD_MIN_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int const) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, struct sk_buff *skb, int frametype)
{
	switch (frametype) {

		case X25_CLEAR_REQUEST:
			if (!FUNC0(skb, X25_STD_MIN_LEN + 2))
				goto out_clear;

			FUNC3(sk, X25_CLEAR_CONFIRMATION);
			FUNC1(sk, 0, skb->data[3], skb->data[4]);
			break;

		case X25_CLEAR_CONFIRMATION:
			FUNC1(sk, 0, 0, 0);
			break;

		default:
			break;
	}

	return 0;

out_clear:
	FUNC3(sk, X25_CLEAR_REQUEST);
	FUNC2(sk);
	return 0;
}