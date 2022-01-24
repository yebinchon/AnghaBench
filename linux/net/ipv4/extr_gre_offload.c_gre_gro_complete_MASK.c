#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int encapsulation; scalar_t__ data; } ;
struct TYPE_3__ {int (* gro_complete ) (struct sk_buff*,int) ;} ;
struct packet_offload {TYPE_1__ callbacks; } ;
struct gre_base_hdr {int flags; int /*<<< orphan*/  protocol; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_4__ {int /*<<< orphan*/  gso_type; } ;

/* Variables and functions */
 int ENOENT ; 
 int GRE_CSUM ; 
 scalar_t__ GRE_HEADER_SECTION ; 
 int GRE_KEY ; 
 int /*<<< orphan*/  SKB_GSO_GRE ; 
 struct packet_offload* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 TYPE_2__* FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, int nhoff)
{
	struct gre_base_hdr *greh = (struct gre_base_hdr *)(skb->data + nhoff);
	struct packet_offload *ptype;
	unsigned int grehlen = sizeof(*greh);
	int err = -ENOENT;
	__be16 type;

	skb->encapsulation = 1;
	FUNC4(skb)->gso_type = SKB_GSO_GRE;

	type = greh->protocol;
	if (greh->flags & GRE_KEY)
		grehlen += GRE_HEADER_SECTION;

	if (greh->flags & GRE_CSUM)
		grehlen += GRE_HEADER_SECTION;

	FUNC1();
	ptype = FUNC0(type);
	if (ptype)
		err = ptype->callbacks.gro_complete(skb, nhoff + grehlen);

	FUNC2();

	FUNC3(skb, nhoff + grehlen);

	return err;
}