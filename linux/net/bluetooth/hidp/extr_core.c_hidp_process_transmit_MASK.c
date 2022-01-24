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
struct socket {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct hidp_session {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hidp_session*) ; 
 int EAGAIN ; 
 int FUNC1 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hidp_session*) ; 
 int /*<<< orphan*/  FUNC3 (struct hidp_session*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff_head*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC7(struct hidp_session *session,
				  struct sk_buff_head *transmit,
				  struct socket *sock)
{
	struct sk_buff *skb;
	int ret;

	FUNC0("session %p", session);

	while ((skb = FUNC5(transmit))) {
		ret = FUNC1(sock, skb->data, skb->len);
		if (ret == -EAGAIN) {
			FUNC6(transmit, skb);
			break;
		} else if (ret < 0) {
			FUNC2(session);
			FUNC4(skb);
			break;
		}

		FUNC3(session);
		FUNC4(skb);
	}
}