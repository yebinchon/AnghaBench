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
struct nlattr {int dummy; } ;
struct list_set {size_t size; } ;
struct ip_set {size_t ext_size; size_t ref; size_t elements; int /*<<< orphan*/  dsize; struct list_set* data; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IPSET_ATTR_DATA ; 
 int /*<<< orphan*/  IPSET_ATTR_ELEMENTS ; 
 int /*<<< orphan*/  IPSET_ATTR_MEMSIZE ; 
 int /*<<< orphan*/  IPSET_ATTR_REFERENCES ; 
 int /*<<< orphan*/  IPSET_ATTR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct ip_set*) ; 
 size_t FUNC2 (struct list_set const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct ip_set *set, struct sk_buff *skb)
{
	const struct list_set *map = set->data;
	struct nlattr *nested;
	size_t memsize = FUNC2(map, set->dsize) + set->ext_size;

	nested = FUNC4(skb, IPSET_ATTR_DATA);
	if (!nested)
		goto nla_put_failure;
	if (FUNC5(skb, IPSET_ATTR_SIZE, FUNC0(map->size)) ||
	    FUNC5(skb, IPSET_ATTR_REFERENCES, FUNC0(set->ref)) ||
	    FUNC5(skb, IPSET_ATTR_MEMSIZE, FUNC0(memsize)) ||
	    FUNC5(skb, IPSET_ATTR_ELEMENTS, FUNC0(set->elements)))
		goto nla_put_failure;
	if (FUNC6(FUNC1(skb, set)))
		goto nla_put_failure;
	FUNC3(skb, nested);

	return 0;
nla_put_failure:
	return -EMSGSIZE;
}