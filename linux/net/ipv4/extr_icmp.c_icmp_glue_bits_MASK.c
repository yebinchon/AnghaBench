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
struct sk_buff {int /*<<< orphan*/  csum; } ;
struct TYPE_4__ {size_t type; } ;
struct TYPE_5__ {TYPE_1__ icmph; } ;
struct icmp_bxm {int /*<<< orphan*/  skb; TYPE_2__ data; scalar_t__ offset; } ;
typedef  int /*<<< orphan*/  __wsum ;
struct TYPE_6__ {scalar_t__ error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* icmp_pointers ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void *from, char *to, int offset, int len, int odd,
			  struct sk_buff *skb)
{
	struct icmp_bxm *icmp_param = (struct icmp_bxm *)from;
	__wsum csum;

	csum = FUNC2(icmp_param->skb,
				      icmp_param->offset + offset,
				      to, len, 0);

	skb->csum = FUNC0(skb->csum, csum, odd);
	if (icmp_pointers[icmp_param->data.icmph.type].error)
		FUNC1(skb, icmp_param->skb);
	return 0;
}