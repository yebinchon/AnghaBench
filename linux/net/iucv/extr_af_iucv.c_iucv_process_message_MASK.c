#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct sock {int /*<<< orphan*/  sk_drops; } ;
struct sk_buff {void* data; unsigned int len; scalar_t__ head; } ;
struct iucv_path {int dummy; } ;
struct iucv_message {int flags; int /*<<< orphan*/  rmmsg; int /*<<< orphan*/  class; } ;
struct iucv_array {void* length; void* address; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  scalar_t__ addr_t ;
struct TYPE_8__ {scalar_t__ offset; int /*<<< orphan*/  class; } ;
struct TYPE_7__ {int /*<<< orphan*/  backlog_skb_q; } ;
struct TYPE_6__ {int (* message_receive ) (struct iucv_path*,struct iucv_message*,int,void*,unsigned int,int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int IUCV_IPBUFLST ; 
 int IUCV_IPRMDATA ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iprm_shutdown ; 
 unsigned int FUNC4 (struct iucv_message*) ; 
 TYPE_3__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* pr_iucv ; 
 scalar_t__ FUNC8 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 TYPE_1__* FUNC14 (struct sk_buff*) ; 
 int FUNC15 (struct iucv_path*,struct iucv_message*,int,void*,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct iucv_path*,struct iucv_message*,int,void*,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct sock *sk, struct sk_buff *skb,
				 struct iucv_path *path,
				 struct iucv_message *msg)
{
	int rc;
	unsigned int len;

	len = FUNC4(msg);

	/* store msg target class in the second 4 bytes of skb ctrl buffer */
	/* Note: the first 4 bytes are reserved for msg tag */
	FUNC0(skb)->class = msg->class;

	/* check for special IPRM messages (e.g. iucv_sock_shutdown) */
	if ((msg->flags & IUCV_IPRMDATA) && len > 7) {
		if (FUNC7(msg->rmmsg, iprm_shutdown, 8) == 0) {
			skb->data = NULL;
			skb->len = 0;
		}
	} else {
		if (FUNC12(skb)) {
			struct iucv_array *iba = (struct iucv_array *)skb->head;
			int i;

			iba[0].address = (u32)(addr_t)skb->data;
			iba[0].length = (u32)FUNC11(skb);
			for (i = 0; i < FUNC14(skb)->nr_frags; i++) {
				skb_frag_t *frag = &FUNC14(skb)->frags[i];

				iba[i + 1].address =
					(u32)(addr_t)FUNC9(frag);
				iba[i + 1].length = (u32)FUNC10(frag);
			}
			rc = pr_iucv->message_receive(path, msg,
					      IUCV_IPBUFLST,
					      (void *)iba, len, NULL);
		} else {
			rc = pr_iucv->message_receive(path, msg,
					      msg->flags & IUCV_IPRMDATA,
					      skb->data, len, NULL);
		}
		if (rc) {
			FUNC6(skb);
			return;
		}
		FUNC1(skb->len != len);
	}

	FUNC0(skb)->offset = 0;
	if (FUNC8(sk, skb)) {
		FUNC3(&sk->sk_drops);	/* skb rejected by filter */
		FUNC6(skb);
		return;
	}
	if (FUNC2(sk, skb))	/* handle rcv queue full */
		FUNC13(&FUNC5(sk)->backlog_skb_q, skb);
}