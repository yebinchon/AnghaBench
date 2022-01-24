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
struct sock {int dummy; } ;
struct net_device {int dummy; } ;
struct dst_entry {struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 scalar_t__ FUNC2 (struct dst_entry*) ; 
 struct dst_entry* FUNC3 (struct sock*) ; 

__attribute__((used)) static struct net_device *FUNC4(struct sock *sk)
{
	struct dst_entry *dst = FUNC3(sk);
	struct net_device *netdev = NULL;

	if (FUNC2(dst)) {
		netdev = dst->dev;
		FUNC0(netdev);
	}

	FUNC1(dst);

	return netdev;
}