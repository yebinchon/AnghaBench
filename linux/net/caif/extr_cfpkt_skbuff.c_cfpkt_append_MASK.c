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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ tail; scalar_t__ end; int /*<<< orphan*/  data; } ;
struct cfpkt {int dummy; } ;

/* Variables and functions */
 scalar_t__ PKT_POSTFIX ; 
 scalar_t__ PKT_PREFIX ; 
 struct cfpkt* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct cfpkt*) ; 
 scalar_t__ FUNC2 (struct cfpkt*) ; 
 struct sk_buff* FUNC3 (struct cfpkt*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct cfpkt* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

struct cfpkt *FUNC8(struct cfpkt *dstpkt,
			   struct cfpkt *addpkt,
			   u16 expectlen)
{
	struct sk_buff *dst = FUNC3(dstpkt);
	struct sk_buff *add = FUNC3(addpkt);
	u16 addlen = FUNC4(add);
	u16 neededtailspace;
	struct sk_buff *tmp;
	u16 dstlen;
	u16 createlen;
	if (FUNC7(FUNC2(dstpkt) || FUNC2(addpkt))) {
		return dstpkt;
	}
	if (expectlen > addlen)
		neededtailspace = expectlen;
	else
		neededtailspace = addlen;

	if (dst->tail + neededtailspace > dst->end) {
		/* Create a dumplicate of 'dst' with more tail space */
		struct cfpkt *tmppkt;
		dstlen = FUNC4(dst);
		createlen = dstlen + neededtailspace;
		tmppkt = FUNC0(createlen + PKT_PREFIX + PKT_POSTFIX);
		if (tmppkt == NULL)
			return NULL;
		tmp = FUNC3(tmppkt);
		FUNC5(tmp, dst->data, dstlen);
		FUNC1(dstpkt);
		dst = tmp;
	}
	FUNC5(dst, add->data, FUNC4(add));
	FUNC1(addpkt);
	return FUNC6(dst);
}