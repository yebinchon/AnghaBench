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
struct sk_buff {int len; } ;
struct mrp_msg_hdr {int dummy; } ;
struct mrp_applicant {TYPE_1__* app; } ;
typedef  int /*<<< orphan*/  _mh ;
struct TYPE_6__ {TYPE_2__* mh; } ;
struct TYPE_5__ {scalar_t__ attrtype; scalar_t__ attrlen; } ;
struct TYPE_4__ {scalar_t__ maxattr; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int*) ; 
 scalar_t__ FUNC2 (struct mrp_applicant*,struct sk_buff*,int*) ; 
 TYPE_2__* FUNC3 (struct sk_buff*,int,int,struct mrp_msg_hdr*) ; 

__attribute__((used)) static int FUNC4(struct mrp_applicant *app, struct sk_buff *skb,
			     int *offset)
{
	struct mrp_msg_hdr _mh;

	FUNC0(skb)->mh = FUNC3(skb, *offset, sizeof(_mh), &_mh);
	if (!FUNC0(skb)->mh)
		return -1;
	*offset += sizeof(_mh);

	if (FUNC0(skb)->mh->attrtype == 0 ||
	    FUNC0(skb)->mh->attrtype > app->app->maxattr ||
	    FUNC0(skb)->mh->attrlen == 0)
		return -1;

	while (skb->len > *offset) {
		if (FUNC1(skb, offset) < 0)
			break;
		if (FUNC2(app, skb, offset) < 0)
			return -1;
	}
	return 0;
}