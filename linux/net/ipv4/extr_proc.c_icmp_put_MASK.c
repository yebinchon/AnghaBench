#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct seq_file {struct net* private; } ;
struct TYPE_5__ {int /*<<< orphan*/  icmp_statistics; TYPE_1__* icmpmsg_statistics; } ;
struct net {TYPE_2__ mib; } ;
typedef  int /*<<< orphan*/  atomic_long_t ;
struct TYPE_6__ {int index; scalar_t__ name; } ;
struct TYPE_4__ {int /*<<< orphan*/ * mibs; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMP_MIB_CSUMERRORS ; 
 int /*<<< orphan*/  ICMP_MIB_INERRORS ; 
 int /*<<< orphan*/  ICMP_MIB_INMSGS ; 
 int /*<<< orphan*/  ICMP_MIB_OUTERRORS ; 
 int /*<<< orphan*/  ICMP_MIB_OUTMSGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* icmpmibmap ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct seq_file *seq)
{
	int i;
	struct net *net = seq->private;
	atomic_long_t *ptr = net->mib.icmpmsg_statistics->mibs;

	FUNC2(seq, "\nIcmp: InMsgs InErrors InCsumErrors");
	for (i = 0; icmpmibmap[i].name; i++)
		FUNC1(seq, " In%s", icmpmibmap[i].name);
	FUNC2(seq, " OutMsgs OutErrors");
	for (i = 0; icmpmibmap[i].name; i++)
		FUNC1(seq, " Out%s", icmpmibmap[i].name);
	FUNC1(seq, "\nIcmp: %lu %lu %lu",
		FUNC3(net->mib.icmp_statistics, ICMP_MIB_INMSGS),
		FUNC3(net->mib.icmp_statistics, ICMP_MIB_INERRORS),
		FUNC3(net->mib.icmp_statistics, ICMP_MIB_CSUMERRORS));
	for (i = 0; icmpmibmap[i].name; i++)
		FUNC1(seq, " %lu",
			   FUNC0(ptr + icmpmibmap[i].index));
	FUNC1(seq, " %lu %lu",
		FUNC3(net->mib.icmp_statistics, ICMP_MIB_OUTMSGS),
		FUNC3(net->mib.icmp_statistics, ICMP_MIB_OUTERRORS));
	for (i = 0; icmpmibmap[i].name; i++)
		FUNC1(seq, " %lu",
			   FUNC0(ptr + (icmpmibmap[i].index | 0x100)));
}