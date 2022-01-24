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
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct garp_msg_hdr {scalar_t__ attrtype; } ;
struct garp_applicant {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct garp_applicant*,struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC4(struct garp_applicant *app, struct sk_buff *skb)
{
	const struct garp_msg_hdr *gm;

	if (!FUNC2(skb, sizeof(*gm)))
		return -1;
	gm = (struct garp_msg_hdr *)skb->data;
	if (gm->attrtype == 0)
		return -1;
	FUNC3(skb, sizeof(*gm));

	while (skb->len > 0) {
		if (FUNC0(app, skb, gm->attrtype) < 0)
			return -1;
		if (FUNC1(skb) < 0)
			break;
	}
	return 0;
}