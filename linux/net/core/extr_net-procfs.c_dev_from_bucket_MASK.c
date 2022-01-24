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
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 unsigned int NETDEV_HASHENTRIES ; 
 struct net_device* FUNC0 (struct seq_file*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 

__attribute__((used)) static inline struct net_device *FUNC3(struct seq_file *seq, loff_t *pos)
{
	struct net_device *dev;
	unsigned int bucket;

	do {
		dev = FUNC0(seq, pos);
		if (dev)
			return dev;

		bucket = FUNC1(*pos) + 1;
		*pos = FUNC2(bucket, 1);
	} while (bucket < NETDEV_HASHENTRIES);

	return NULL;
}