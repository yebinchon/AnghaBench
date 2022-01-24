#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct seq_file {struct net* private; } ;
struct TYPE_4__ {TYPE_1__* icmpmsg_statistics; } ;
struct net {TYPE_2__ mib; } ;
struct TYPE_3__ {int /*<<< orphan*/ * mibs; } ;

/* Variables and functions */
 int ICMPMSG_MIB_MAX ; 
 int PERLINE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,unsigned long*,unsigned short*,int) ; 

__attribute__((used)) static void FUNC2(struct seq_file *seq)
{
#define PERLINE	16

	int i, count;
	unsigned short type[PERLINE];
	unsigned long vals[PERLINE], val;
	struct net *net = seq->private;

	count = 0;
	for (i = 0; i < ICMPMSG_MIB_MAX; i++) {
		val = FUNC0(&net->mib.icmpmsg_statistics->mibs[i]);
		if (val) {
			type[count] = i;
			vals[count++] = val;
		}
		if (count == PERLINE) {
			FUNC1(seq, vals, type, count);
			count = 0;
		}
	}
	FUNC1(seq, vals, type, count);

#undef PERLINE
}