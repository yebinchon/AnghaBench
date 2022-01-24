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
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*,int /*<<< orphan*/ *,struct list_head*,struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_PRE_ROUTING ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  ip_rcv_finish ; 

__attribute__((used)) static void FUNC2(struct list_head *head, struct net_device *dev,
			   struct net *net)
{
	FUNC0(NFPROTO_IPV4, NF_INET_PRE_ROUTING, net, NULL,
		     head, dev, NULL, ip_rcv_finish);
	FUNC1(net, NULL, head);
}