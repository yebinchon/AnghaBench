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
struct sk_buff {int dummy; } ;
struct ip_set {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IPSET_ATTR_TIMEOUT ; 
 scalar_t__ FUNC0 (struct ip_set const*) ; 
 scalar_t__ FUNC1 (struct ip_set const*) ; 
 scalar_t__ FUNC2 (struct ip_set const*) ; 
 scalar_t__ FUNC3 (struct ip_set const*) ; 
 int /*<<< orphan*/  FUNC4 (void const*,struct ip_set const*) ; 
 int /*<<< orphan*/  FUNC5 (void const*,struct ip_set const*) ; 
 int /*<<< orphan*/  FUNC6 (void const*,struct ip_set const*) ; 
 unsigned long* FUNC7 (void const*,struct ip_set const*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC12 (unsigned long*) ; 
 scalar_t__ FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC14(struct sk_buff *skb, const struct ip_set *set,
		      const void *e, bool active)
{
	if (FUNC3(set)) {
		unsigned long *timeout = FUNC7(e, set);

		if (FUNC13(skb, IPSET_ATTR_TIMEOUT,
			FUNC8(active ? FUNC12(timeout)
				: *timeout)))
			return -EMSGSIZE;
	}
	if (FUNC1(set) &&
	    FUNC10(skb, FUNC5(e, set)))
		return -EMSGSIZE;
	if (FUNC0(set) &&
	    FUNC9(skb, FUNC4(e, set)))
		return -EMSGSIZE;
	if (FUNC2(set) &&
	    FUNC11(skb, FUNC6(e, set)))
		return -EMSGSIZE;
	return 0;
}