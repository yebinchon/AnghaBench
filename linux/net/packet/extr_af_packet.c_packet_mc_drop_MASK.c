#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct packet_mreq_max {scalar_t__ mr_ifindex; scalar_t__ mr_type; scalar_t__ mr_alen; int /*<<< orphan*/  mr_address; } ;
struct packet_mclist {scalar_t__ ifindex; scalar_t__ type; scalar_t__ alen; scalar_t__ count; struct packet_mclist* next; int /*<<< orphan*/  addr; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct packet_mclist* mclist; } ;

/* Variables and functions */
 struct net_device* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct packet_mclist*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct packet_mclist*,int) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

__attribute__((used)) static int FUNC8(struct sock *sk, struct packet_mreq_max *mreq)
{
	struct packet_mclist *ml, **mlp;

	FUNC5();

	for (mlp = &FUNC4(sk)->mclist; (ml = *mlp) != NULL; mlp = &ml->next) {
		if (ml->ifindex == mreq->mr_ifindex &&
		    ml->type == mreq->mr_type &&
		    ml->alen == mreq->mr_alen &&
		    FUNC2(ml->addr, mreq->mr_address, ml->alen) == 0) {
			if (--ml->count == 0) {
				struct net_device *dev;
				*mlp = ml->next;
				dev = FUNC0(FUNC7(sk), ml->ifindex);
				if (dev)
					FUNC3(dev, ml, -1);
				FUNC1(ml);
			}
			break;
		}
	}
	FUNC6();
	return 0;
}