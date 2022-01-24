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
struct TYPE_5__ {int /*<<< orphan*/  spi; } ;
struct xfrm_state {TYPE_1__ id; } ;
struct xfrm_offload {int proto; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int protocol; } ;
struct ip_esp_hdr {int /*<<< orphan*/  seq_no; int /*<<< orphan*/  spi; } ;
struct TYPE_6__ {int /*<<< orphan*/  low; } ;
struct TYPE_7__ {TYPE_2__ output; } ;
struct TYPE_8__ {TYPE_3__ seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_ESP ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ip_esp_hdr* FUNC2 (struct sk_buff*) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct xfrm_offload* FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC8(struct xfrm_state *x, struct sk_buff *skb)
{
	struct ip_esp_hdr *esph;
	struct iphdr *iph = FUNC3(skb);
	struct xfrm_offload *xo = FUNC7(skb);
	int proto = iph->protocol;

	FUNC6(skb, -FUNC5(skb));
	esph = FUNC2(skb);
	*FUNC4(skb) = IPPROTO_ESP;

	esph->spi = x->id.spi;
	esph->seq_no = FUNC1(FUNC0(skb)->seq.output.low);

	xo->proto = proto;
}