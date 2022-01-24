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
struct sk_buff {int /*<<< orphan*/  cb; } ;
struct cfpkt {int dummy; } ;
struct TYPE_5__ {TYPE_3__* dn; } ;
struct TYPE_4__ {int /*<<< orphan*/  sk_priority; } ;
struct caifsock {TYPE_2__ layer; TYPE_1__ sk; } ;
struct caif_payload_info {int dummy; } ;
struct TYPE_6__ {int (* transmit ) (TYPE_3__*,struct cfpkt*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CAIF_DIR_OUT ; 
 int EINVAL ; 
 struct cfpkt* FUNC0 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfpkt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_3__*,struct cfpkt*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct caifsock *cf_sk,
			int noblock, long timeo)
{
	struct cfpkt *pkt;

	pkt = FUNC0(CAIF_DIR_OUT, skb);
	FUNC3(skb->cb, 0, sizeof(struct caif_payload_info));
	FUNC1(pkt, cf_sk->sk.sk_priority);

	if (cf_sk->layer.dn == NULL) {
		FUNC2(skb);
		return -EINVAL;
	}

	return cf_sk->layer.dn->transmit(cf_sk->layer.dn, pkt);
}