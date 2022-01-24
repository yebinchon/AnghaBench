#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct seq_file {struct net* private; } ;
struct TYPE_4__ {int /*<<< orphan*/  xfrm_statistics; } ;
struct net {TYPE_1__ mib; } ;
struct TYPE_5__ {scalar_t__ name; } ;

/* Variables and functions */
 int LINUX_MIB_XFRMMAX ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* xfrm_mib_list ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, void *v)
{
	unsigned long buff[LINUX_MIB_XFRMMAX];
	struct net *net = seq->private;
	int i;

	FUNC0(buff, 0, sizeof(unsigned long) * LINUX_MIB_XFRMMAX);

	FUNC2(buff, xfrm_mib_list,
				 net->mib.xfrm_statistics);
	for (i = 0; xfrm_mib_list[i].name; i++)
		FUNC1(seq, "%-24s\t%lu\n", xfrm_mib_list[i].name,
						buff[i]);

	return 0;
}