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
struct seq_file {int dummy; } ;
struct net_device {int dummy; } ;
struct can_dev_rcv_lists {int /*<<< orphan*/ * rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct seq_file *m, int idx,
					     struct net_device *dev,
					     struct can_dev_rcv_lists *dev_rcv_lists)
{
	if (!FUNC3(&dev_rcv_lists->rx[idx])) {
		FUNC2(m);
		FUNC1(m, &dev_rcv_lists->rx[idx], dev);
	} else
		FUNC4(m, "  (%s: no entry)\n", FUNC0(dev));

}