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
struct rpc_procinfo {int dummy; } ;
struct rpc_iostats {int /*<<< orphan*/  om_error_status; int /*<<< orphan*/  om_execute; int /*<<< orphan*/  om_rtt; int /*<<< orphan*/  om_queue; int /*<<< orphan*/  om_bytes_recv; int /*<<< orphan*/  om_bytes_sent; int /*<<< orphan*/  om_timeouts; int /*<<< orphan*/  om_ntrans; int /*<<< orphan*/  om_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int,struct rpc_procinfo const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct seq_file *seq, struct rpc_iostats *stats,
			       int op, const struct rpc_procinfo *procs)
{
	FUNC0(seq, op, procs);
	FUNC2(seq, "%lu %lu %lu %llu %llu %llu %llu %llu %lu\n",
		   stats->om_ops,
		   stats->om_ntrans,
		   stats->om_timeouts,
		   stats->om_bytes_sent,
		   stats->om_bytes_recv,
		   FUNC1(stats->om_queue),
		   FUNC1(stats->om_rtt),
		   FUNC1(stats->om_execute),
		   stats->om_error_status);
}