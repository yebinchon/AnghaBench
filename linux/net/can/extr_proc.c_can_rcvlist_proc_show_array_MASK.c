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
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,struct hlist_head*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct seq_file *m,
					       struct net_device *dev,
					       struct hlist_head *rcv_array,
					       unsigned int rcv_array_sz)
{
	unsigned int i;
	int all_empty = 1;

	/* check whether at least one list is non-empty */
	for (i = 0; i < rcv_array_sz; i++)
		if (!FUNC3(&rcv_array[i])) {
			all_empty = 0;
			break;
		}

	if (!all_empty) {
		FUNC2(m);
		for (i = 0; i < rcv_array_sz; i++) {
			if (!FUNC3(&rcv_array[i]))
				FUNC1(m, &rcv_array[i], dev);
		}
	} else
		FUNC4(m, "  (%s: no entry)\n", FUNC0(dev));
}