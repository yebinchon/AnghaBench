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
struct virtio_net_hdr {int dummy; } ;
struct msghdr {int /*<<< orphan*/  msg_iter; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int FUNC0 (struct virtio_net_hdr*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_net_hdr*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct msghdr *msg, size_t *len,
				 struct virtio_net_hdr *vnet_hdr)
{
	if (*len < sizeof(*vnet_hdr))
		return -EINVAL;
	*len -= sizeof(*vnet_hdr);

	if (!FUNC1(vnet_hdr, sizeof(*vnet_hdr), &msg->msg_iter))
		return -EFAULT;

	return FUNC0(vnet_hdr, *len);
}