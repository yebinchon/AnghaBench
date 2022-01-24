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
struct tcpnotify_globals {int /*<<< orphan*/  ncalls; int /*<<< orphan*/  total_retrans; } ;
struct tcp_notifier {int type; int subtype; int source; int hash; } ;
struct bpf_sock_ops {int reply; int /*<<< orphan*/  total_retrans; int /*<<< orphan*/  remote_port; scalar_t__ op; } ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_ANY ; 
 int /*<<< orphan*/  BPF_F_CURRENT_CPU ; 
#define  BPF_SOCK_OPS_ACTIVE_ESTABLISHED_CB 137 
#define  BPF_SOCK_OPS_BASE_RTT 136 
#define  BPF_SOCK_OPS_NEEDS_ECN 135 
#define  BPF_SOCK_OPS_PASSIVE_ESTABLISHED_CB 134 
#define  BPF_SOCK_OPS_RETRANS_CB 133 
 int BPF_SOCK_OPS_RETRANS_CB_FLAG ; 
#define  BPF_SOCK_OPS_RTO_CB 132 
 int BPF_SOCK_OPS_RTO_CB_FLAG ; 
#define  BPF_SOCK_OPS_RWND_INIT 131 
#define  BPF_SOCK_OPS_TCP_CONNECT_CB 130 
#define  BPF_SOCK_OPS_TCP_LISTEN_CB 129 
#define  BPF_SOCK_OPS_TIMEOUT_INIT 128 
 scalar_t__ TESTPORT ; 
 struct tcpnotify_globals* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct tcpnotify_globals*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_sock_ops*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tcp_notifier*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_sock_ops*,int) ; 
 int /*<<< orphan*/  global_map ; 
 int /*<<< orphan*/  perf_event_map ; 

int FUNC5(struct bpf_sock_ops *skops)
{
	int rv = -1;
	int op;

	op = (int) skops->op;

	if (FUNC2(skops->remote_port) != TESTPORT) {
		skops->reply = -1;
		return 0;
	}

	switch (op) {
	case BPF_SOCK_OPS_TIMEOUT_INIT:
	case BPF_SOCK_OPS_RWND_INIT:
	case BPF_SOCK_OPS_NEEDS_ECN:
	case BPF_SOCK_OPS_BASE_RTT:
	case BPF_SOCK_OPS_RTO_CB:
		rv = 1;
		break;

	case BPF_SOCK_OPS_TCP_CONNECT_CB:
	case BPF_SOCK_OPS_TCP_LISTEN_CB:
	case BPF_SOCK_OPS_ACTIVE_ESTABLISHED_CB:
	case BPF_SOCK_OPS_PASSIVE_ESTABLISHED_CB:
		FUNC4(skops, (BPF_SOCK_OPS_RETRANS_CB_FLAG|
					  BPF_SOCK_OPS_RTO_CB_FLAG));
		rv = 1;
		break;
	case BPF_SOCK_OPS_RETRANS_CB: {
			__u32 key = 0;
			struct tcpnotify_globals g, *gp;
			struct tcp_notifier msg = {
				.type = 0xde,
				.subtype = 0xad,
				.source = 0xbe,
				.hash = 0xef,
			};

			rv = 1;

			/* Update results */
			gp = FUNC0(&global_map, &key);
			if (!gp)
				break;
			g = *gp;
			g.total_retrans = skops->total_retrans;
			g.ncalls++;
			FUNC1(&global_map, &key, &g,
					    BPF_ANY);
			FUNC3(skops, &perf_event_map,
					      BPF_F_CURRENT_CPU,
					      &msg, sizeof(msg));
		}
		break;
	default:
		rv = -1;
	}
	skops->reply = rv;
	return 1;
}