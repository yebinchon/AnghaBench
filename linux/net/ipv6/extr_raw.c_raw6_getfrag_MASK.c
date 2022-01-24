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
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  csum; } ;
struct raw6_frag_vec {int hlen; int /*<<< orphan*/  msg; scalar_t__ c; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,int) ; 
 int FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(void *from, char *to, int offset, int len, int odd,
		       struct sk_buff *skb)
{
	struct raw6_frag_vec *rfv = from;

	if (offset < rfv->hlen) {
		int copy = FUNC4(rfv->hlen - offset, len);

		if (skb->ip_summed == CHECKSUM_PARTIAL)
			FUNC3(to, rfv->c + offset, copy);
		else
			skb->csum = FUNC0(
				skb->csum,
				FUNC1(rfv->c + offset,
							  to, copy, 0),
				odd);

		odd = 0;
		offset += copy;
		to += copy;
		len -= copy;

		if (!len)
			return 0;
	}

	offset -= rfv->hlen;

	return FUNC2(rfv->msg, to, offset, len, odd, skb);
}