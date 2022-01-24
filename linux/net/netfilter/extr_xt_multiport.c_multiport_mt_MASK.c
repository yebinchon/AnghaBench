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
struct xt_multiport_v1 {int dummy; } ;
struct xt_action_param {scalar_t__ fragoff; int hotdrop; int /*<<< orphan*/  thoff; struct xt_multiport_v1* matchinfo; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  _ports ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int FUNC1 (struct xt_multiport_v1 const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (struct sk_buff const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC4(const struct sk_buff *skb, struct xt_action_param *par)
{
	const __be16 *pptr;
	__be16 _ports[2];
	const struct xt_multiport_v1 *multiinfo = par->matchinfo;

	if (par->fragoff != 0)
		return false;

	pptr = FUNC3(skb, par->thoff, sizeof(_ports), _ports);
	if (pptr == NULL) {
		/* We've been asked to examine this packet, and we
		 * can't.  Hence, no choice but to drop.
		 */
		FUNC2("Dropping evil offset=0 tinygram.\n");
		par->hotdrop = true;
		return false;
	}

	return FUNC1(multiinfo, FUNC0(pptr[0]), FUNC0(pptr[1]));
}