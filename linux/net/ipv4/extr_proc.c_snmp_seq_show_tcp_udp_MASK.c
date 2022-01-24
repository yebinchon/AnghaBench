#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct seq_file {struct net* private; } ;
struct TYPE_5__ {int /*<<< orphan*/  udplite_statistics; int /*<<< orphan*/  udp_statistics; int /*<<< orphan*/  tcp_statistics; } ;
struct net {TYPE_1__ mib; } ;
struct TYPE_6__ {unsigned long name; scalar_t__ entry; } ;

/* Variables and functions */
 int TCPUDP_MIB_MAX ; 
 scalar_t__ TCP_MIB_MAXCONN ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*) ; 
 TYPE_2__* snmp4_tcp_list ; 
 TYPE_2__* snmp4_udp_list ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct seq_file *seq, void *v)
{
	unsigned long buff[TCPUDP_MIB_MAX];
	struct net *net = seq->private;
	int i;

	FUNC0(buff, 0, TCPUDP_MIB_MAX * sizeof(unsigned long));

	FUNC3(seq, "\nTcp:");
	for (i = 0; snmp4_tcp_list[i].name; i++)
		FUNC1(seq, " %s", snmp4_tcp_list[i].name);

	FUNC3(seq, "\nTcp:");
	FUNC4(buff, snmp4_tcp_list,
				 net->mib.tcp_statistics);
	for (i = 0; snmp4_tcp_list[i].name; i++) {
		/* MaxConn field is signed, RFC 2012 */
		if (snmp4_tcp_list[i].entry == TCP_MIB_MAXCONN)
			FUNC1(seq, " %ld", buff[i]);
		else
			FUNC1(seq, " %lu", buff[i]);
	}

	FUNC0(buff, 0, TCPUDP_MIB_MAX * sizeof(unsigned long));

	FUNC4(buff, snmp4_udp_list,
				 net->mib.udp_statistics);
	FUNC3(seq, "\nUdp:");
	for (i = 0; snmp4_udp_list[i].name; i++)
		FUNC1(seq, " %s", snmp4_udp_list[i].name);
	FUNC3(seq, "\nUdp:");
	for (i = 0; snmp4_udp_list[i].name; i++)
		FUNC1(seq, " %lu", buff[i]);

	FUNC0(buff, 0, TCPUDP_MIB_MAX * sizeof(unsigned long));

	/* the UDP and UDP-Lite MIBs are the same */
	FUNC3(seq, "\nUdpLite:");
	FUNC4(buff, snmp4_udp_list,
				 net->mib.udplite_statistics);
	for (i = 0; snmp4_udp_list[i].name; i++)
		FUNC1(seq, " %s", snmp4_udp_list[i].name);
	FUNC3(seq, "\nUdpLite:");
	for (i = 0; snmp4_udp_list[i].name; i++)
		FUNC1(seq, " %lu", buff[i]);

	FUNC2(seq, '\n');
	return 0;
}