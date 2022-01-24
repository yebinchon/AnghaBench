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
struct l2tp_dfs_seq_data {int /*<<< orphan*/  session; int /*<<< orphan*/  tunnel; } ;

/* Variables and functions */
 void* SEQ_START_TOKEN ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, void *v)
{
	struct l2tp_dfs_seq_data *pd = v;

	/* display header on line 1 */
	if (v == SEQ_START_TOKEN) {
		FUNC2(m, "TUNNEL ID, peer ID from IP to IP\n");
		FUNC2(m, " L2TPv2/L2TPv3, UDP/IP\n");
		FUNC2(m, " sessions session-count, refcnt refcnt/sk->refcnt\n");
		FUNC2(m, " debug tx-pkts/bytes/errs rx-pkts/bytes/errs\n");
		FUNC2(m, "  SESSION ID, peer ID, PWTYPE\n");
		FUNC2(m, "   refcnt cnt\n");
		FUNC2(m, "   offset OFFSET l2specific TYPE/LEN\n");
		FUNC2(m, "   [ cookie ]\n");
		FUNC2(m, "   [ peer cookie ]\n");
		FUNC2(m, "   config mtu/mru/rcvseq/sendseq/dataseq/lns debug reorderto\n");
		FUNC2(m, "   nr/ns tx-pkts/bytes/errs rx-pkts/bytes/errs\n");
		goto out;
	}

	if (!pd->session)
		FUNC1(m, pd->tunnel);
	else
		FUNC0(m, pd->session);

out:
	return 0;
}