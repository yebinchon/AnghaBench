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
struct skb_shared_info {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  destructor; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int NLMSG_GOODSIZE ; 
 unsigned int FUNC0 (int) ; 
 struct sk_buff* FUNC1 (void*,unsigned int) ; 
 struct sk_buff* FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netlink_skb_destructor ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (unsigned int) ; 

__attribute__((used)) static struct sk_buff *FUNC5(unsigned int size,
					       int broadcast)
{
	struct sk_buff *skb;
	void *data;

	if (size <= NLMSG_GOODSIZE || broadcast)
		return FUNC2(size, GFP_KERNEL);

	size = FUNC0(size) +
	       FUNC0(sizeof(struct skb_shared_info));

	data = FUNC4(size);
	if (data == NULL)
		return NULL;

	skb = FUNC1(data, size);
	if (skb == NULL)
		FUNC3(data);
	else
		skb->destructor = netlink_skb_destructor;

	return skb;
}