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
struct packet_type {int dummy; } ;
struct net_device {scalar_t__ type; } ;
struct canfd_frame {scalar_t__ len; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_CAN ; 
 scalar_t__ CAN_MAX_DLEN ; 
 scalar_t__ CAN_MTU ; 
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct net_device *dev,
		   struct packet_type *pt, struct net_device *orig_dev)
{
	struct canfd_frame *cfd = (struct canfd_frame *)skb->data;

	if (FUNC3(dev->type != ARPHRD_CAN || skb->len != CAN_MTU ||
		     cfd->len > CAN_MAX_DLEN)) {
		FUNC2("PF_CAN: dropped non conform CAN skbuf: dev type %d, len %d, datalen %d\n",
			     dev->type, skb->len, cfd->len);
		FUNC1(skb);
		return NET_RX_DROP;
	}

	FUNC0(skb, dev);
	return NET_RX_SUCCESS;
}