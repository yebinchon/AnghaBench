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
struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct hidp_session {int /*<<< orphan*/  terminate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hidp_session*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct hidp_session *session, struct socket *sock,
			     struct sk_buff_head *transmit, unsigned char hdr,
			     const unsigned char *data, int size)
{
	struct sk_buff *skb;
	struct sock *sk = sock->sk;
	int ret;

	FUNC0("session %p data %p size %d", session, data, size);

	if (FUNC3(&session->terminate))
		return -EIO;

	skb = FUNC2(size + 1, GFP_ATOMIC);
	if (!skb) {
		FUNC1("Can't allocate memory for new frame");
		return -ENOMEM;
	}

	FUNC6(skb, hdr);
	if (data && size > 0) {
		FUNC5(skb, data, size);
		ret = size;
	} else {
		ret = 0;
	}

	FUNC7(transmit, skb);
	FUNC8(FUNC4(sk));

	return ret;
}