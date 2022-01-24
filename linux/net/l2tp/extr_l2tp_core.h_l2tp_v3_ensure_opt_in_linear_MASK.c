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
struct sk_buff {unsigned char* data; } ;
struct l2tp_session {int peer_cookie_len; } ;

/* Variables and functions */
 int FUNC0 (struct l2tp_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 

__attribute__((used)) static inline int FUNC2(struct l2tp_session *session, struct sk_buff *skb,
					       unsigned char **ptr, unsigned char **optr)
{
	int opt_len = session->peer_cookie_len + FUNC0(session);

	if (opt_len > 0) {
		int off = *ptr - *optr;

		if (!FUNC1(skb, off + opt_len))
			return -1;

		if (skb->data != *optr) {
			*optr = skb->data;
			*ptr = skb->data + off;
		}
	}

	return 0;
}