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
struct sock {int /*<<< orphan*/  sk_wmem_alloc; int /*<<< orphan*/  sk_wmem_queued; } ;
struct sk_buff {scalar_t__ truesize; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_shared_key {int /*<<< orphan*/  key_id; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  key_list; scalar_t__ deactivated; } ;
struct sctp_chunk {struct sctp_shared_key* shkey; struct sctp_association* asoc; } ;
struct TYPE_7__ {TYPE_2__* si; } ;
struct TYPE_5__ {struct sock* sk; } ;
struct sctp_association {int /*<<< orphan*/  ulpq; TYPE_3__ stream; int /*<<< orphan*/  sndbuf_used; TYPE_1__ base; } ;
struct TYPE_8__ {struct sctp_chunk* destructor_arg; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* enqueue_event ) (int /*<<< orphan*/ *,struct sctp_ulpevent*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SCTP_AUTH_FREE_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_shared_key*) ; 
 struct sctp_ulpevent* FUNC6 (struct sctp_association*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,scalar_t__) ; 
 TYPE_4__* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct sctp_ulpevent*) ; 

__attribute__((used)) static void FUNC12(struct sk_buff *skb)
{
	struct sctp_chunk *chunk = FUNC9(skb)->destructor_arg;
	struct sctp_association *asoc = chunk->asoc;
	struct sock *sk = asoc->base.sk;

	FUNC8(sk, skb->truesize);
	sk->sk_wmem_queued -= skb->truesize + sizeof(struct sctp_chunk);
	asoc->sndbuf_used -= skb->truesize + sizeof(struct sctp_chunk);
	FUNC0(FUNC3(sizeof(struct sctp_chunk),
				      &sk->sk_wmem_alloc));

	if (chunk->shkey) {
		struct sctp_shared_key *shkey = chunk->shkey;

		/* refcnt == 2 and !list_empty mean after this release, it's
		 * not being used anywhere, and it's time to notify userland
		 * that this shkey can be freed if it's been deactivated.
		 */
		if (shkey->deactivated && !FUNC1(&shkey->key_list) &&
		    FUNC2(&shkey->refcnt) == 2) {
			struct sctp_ulpevent *ev;

			ev = FUNC6(asoc, shkey->key_id,
							SCTP_AUTH_FREE_KEY,
							GFP_KERNEL);
			if (ev)
				asoc->stream.si->enqueue_event(&asoc->ulpq, ev);
		}
		FUNC5(chunk->shkey);
	}

	FUNC10(skb);
	FUNC7(sk, asoc);

	FUNC4(asoc);
}