#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct seq_file {struct net* private; } ;
struct TYPE_5__ {int /*<<< orphan*/  tw_count; } ;
struct TYPE_7__ {TYPE_4__* fqdir; TYPE_1__ tcp_death_row; } ;
struct net {TYPE_3__ ipv4; } ;
struct TYPE_6__ {int /*<<< orphan*/  nelems; } ;
struct TYPE_8__ {TYPE_2__ rhashtable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  raw_prot ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*) ; 
 int /*<<< orphan*/  tcp_orphan_count ; 
 int /*<<< orphan*/  tcp_prot ; 
 int /*<<< orphan*/  udp_prot ; 
 int /*<<< orphan*/  udplite_prot ; 

__attribute__((used)) static int FUNC8(struct seq_file *seq, void *v)
{
	struct net *net = seq->private;
	int orphans, sockets;

	orphans = FUNC2(&tcp_orphan_count);
	sockets = FUNC4(&tcp_prot);

	FUNC7(seq);
	FUNC5(seq, "TCP: inuse %d orphan %d tw %d alloc %d mem %ld\n",
		   FUNC6(net, &tcp_prot), orphans,
		   FUNC0(&net->ipv4.tcp_death_row.tw_count), sockets,
		   FUNC3(&tcp_prot));
	FUNC5(seq, "UDP: inuse %d mem %ld\n",
		   FUNC6(net, &udp_prot),
		   FUNC3(&udp_prot));
	FUNC5(seq, "UDPLITE: inuse %d\n",
		   FUNC6(net, &udplite_prot));
	FUNC5(seq, "RAW: inuse %d\n",
		   FUNC6(net, &raw_prot));
	FUNC5(seq,  "FRAG: inuse %u memory %lu\n",
		   FUNC0(&net->ipv4.fqdir->rhashtable.nelems),
		   FUNC1(net->ipv4.fqdir));
	return 0;
}