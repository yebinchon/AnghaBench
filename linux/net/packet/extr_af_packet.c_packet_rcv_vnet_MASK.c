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
typedef  int /*<<< orphan*/  vnet_hdr ;
struct virtio_net_hdr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct msghdr*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct sk_buff const*,struct virtio_net_hdr*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct msghdr *msg, const struct sk_buff *skb,
			   size_t *len)
{
	struct virtio_net_hdr vnet_hdr;

	if (*len < sizeof(vnet_hdr))
		return -EINVAL;
	*len -= sizeof(vnet_hdr);

	if (FUNC2(skb, &vnet_hdr, FUNC1(), true, 0))
		return -EINVAL;

	return FUNC0(msg, (void *)&vnet_hdr, sizeof(vnet_hdr));
}