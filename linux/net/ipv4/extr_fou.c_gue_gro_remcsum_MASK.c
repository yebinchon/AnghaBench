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
struct sk_buff {int remcsum_offload; } ;
struct guehdr {int dummy; } ;
struct gro_remcsum {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  csum_valid; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 struct guehdr* FUNC2 (struct sk_buff*,void*,unsigned int,size_t,size_t,size_t,struct gro_remcsum*,int) ; 

__attribute__((used)) static struct guehdr *FUNC3(struct sk_buff *skb, unsigned int off,
				      struct guehdr *guehdr, void *data,
				      size_t hdrlen, struct gro_remcsum *grc,
				      bool nopartial)
{
	__be16 *pd = data;
	size_t start = FUNC1(pd[0]);
	size_t offset = FUNC1(pd[1]);

	if (skb->remcsum_offload)
		return guehdr;

	if (!FUNC0(skb)->csum_valid)
		return NULL;

	guehdr = FUNC2(skb, (void *)guehdr, off, hdrlen,
					 start, offset, grc, nopartial);

	skb->remcsum_offload = 1;

	return guehdr;
}