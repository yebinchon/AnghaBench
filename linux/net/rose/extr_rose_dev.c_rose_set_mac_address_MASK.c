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
struct sockaddr {scalar_t__ sa_data; } ;
struct net_device {int flags; int /*<<< orphan*/  addr_len; scalar_t__ dev_addr; } ;
typedef  int /*<<< orphan*/  rose_address ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, void *addr)
{
	struct sockaddr *sa = addr;
	int err;

	if (!FUNC0(dev->dev_addr, sa->sa_data, dev->addr_len))
		return 0;

	if (dev->flags & IFF_UP) {
		err = FUNC2((rose_address *)sa->sa_data);
		if (err)
			return err;

		FUNC3((rose_address *)dev->dev_addr);
	}

	FUNC1(dev->dev_addr, sa->sa_data, dev->addr_len);

	return 0;
}