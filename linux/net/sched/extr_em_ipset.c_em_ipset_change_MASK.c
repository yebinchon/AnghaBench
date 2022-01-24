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
struct xt_set_info {int /*<<< orphan*/  index; } ;
struct tcf_ematch {int datalen; unsigned long data; } ;
struct net {int dummy; } ;
typedef  scalar_t__ ip_set_id_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IPSET_INVALID_ID ; 
 scalar_t__ FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,scalar_t__) ; 
 scalar_t__ FUNC2 (void*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net *net, void *data, int data_len,
			   struct tcf_ematch *em)
{
	struct xt_set_info *set = data;
	ip_set_id_t index;

	if (data_len != sizeof(*set))
		return -EINVAL;

	index = FUNC0(net, set->index);
	if (index == IPSET_INVALID_ID)
		return -ENOENT;

	em->datalen = sizeof(*set);
	em->data = (unsigned long)FUNC2(data, em->datalen, GFP_KERNEL);
	if (em->data)
		return 0;

	FUNC1(net, index);
	return -ENOMEM;
}