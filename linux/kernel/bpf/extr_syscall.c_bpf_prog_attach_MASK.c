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
union bpf_attr {int attach_flags; int /*<<< orphan*/  attach_type; int /*<<< orphan*/  attach_bpf_fd; } ;
struct bpf_prog {int dummy; } ;
typedef  enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;

/* Variables and functions */
#define  BPF_CGROUP_DEVICE 154 
#define  BPF_CGROUP_GETSOCKOPT 153 
#define  BPF_CGROUP_INET4_BIND 152 
#define  BPF_CGROUP_INET4_CONNECT 151 
#define  BPF_CGROUP_INET4_POST_BIND 150 
#define  BPF_CGROUP_INET6_BIND 149 
#define  BPF_CGROUP_INET6_CONNECT 148 
#define  BPF_CGROUP_INET6_POST_BIND 147 
#define  BPF_CGROUP_INET_EGRESS 146 
#define  BPF_CGROUP_INET_INGRESS 145 
#define  BPF_CGROUP_INET_SOCK_CREATE 144 
#define  BPF_CGROUP_SETSOCKOPT 143 
#define  BPF_CGROUP_SOCK_OPS 142 
#define  BPF_CGROUP_SYSCTL 141 
#define  BPF_CGROUP_UDP4_RECVMSG 140 
#define  BPF_CGROUP_UDP4_SENDMSG 139 
#define  BPF_CGROUP_UDP6_RECVMSG 138 
#define  BPF_CGROUP_UDP6_SENDMSG 137 
#define  BPF_FLOW_DISSECTOR 136 
 int BPF_F_ATTACH_MASK ; 
#define  BPF_LIRC_MODE2 135 
 int /*<<< orphan*/  BPF_PROG_ATTACH ; 
 int BPF_PROG_TYPE_CGROUP_DEVICE ; 
 int BPF_PROG_TYPE_CGROUP_SKB ; 
 int BPF_PROG_TYPE_CGROUP_SOCK ; 
 int BPF_PROG_TYPE_CGROUP_SOCKOPT ; 
 int BPF_PROG_TYPE_CGROUP_SOCK_ADDR ; 
 int BPF_PROG_TYPE_CGROUP_SYSCTL ; 
#define  BPF_PROG_TYPE_FLOW_DISSECTOR 134 
#define  BPF_PROG_TYPE_LIRC_MODE2 133 
#define  BPF_PROG_TYPE_SK_MSG 132 
#define  BPF_PROG_TYPE_SK_SKB 131 
 int BPF_PROG_TYPE_SOCK_OPS ; 
#define  BPF_SK_MSG_VERDICT 130 
#define  BPF_SK_SKB_STREAM_PARSER 129 
#define  BPF_SK_SKB_STREAM_VERDICT 128 
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FUNC1 (struct bpf_prog*) ; 
 int FUNC2 (struct bpf_prog*) ; 
 scalar_t__ FUNC3 (struct bpf_prog*,int /*<<< orphan*/ ) ; 
 struct bpf_prog* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (union bpf_attr const*,int,struct bpf_prog*) ; 
 int FUNC8 (union bpf_attr const*,struct bpf_prog*) ; 
 int FUNC9 (union bpf_attr const*,struct bpf_prog*) ; 
 int FUNC10 (union bpf_attr const*,struct bpf_prog*) ; 

__attribute__((used)) static int FUNC11(const union bpf_attr *attr)
{
	enum bpf_prog_type ptype;
	struct bpf_prog *prog;
	int ret;

	if (!FUNC6(CAP_NET_ADMIN))
		return -EPERM;

	if (FUNC0(BPF_PROG_ATTACH))
		return -EINVAL;

	if (attr->attach_flags & ~BPF_F_ATTACH_MASK)
		return -EINVAL;

	switch (attr->attach_type) {
	case BPF_CGROUP_INET_INGRESS:
	case BPF_CGROUP_INET_EGRESS:
		ptype = BPF_PROG_TYPE_CGROUP_SKB;
		break;
	case BPF_CGROUP_INET_SOCK_CREATE:
	case BPF_CGROUP_INET4_POST_BIND:
	case BPF_CGROUP_INET6_POST_BIND:
		ptype = BPF_PROG_TYPE_CGROUP_SOCK;
		break;
	case BPF_CGROUP_INET4_BIND:
	case BPF_CGROUP_INET6_BIND:
	case BPF_CGROUP_INET4_CONNECT:
	case BPF_CGROUP_INET6_CONNECT:
	case BPF_CGROUP_UDP4_SENDMSG:
	case BPF_CGROUP_UDP6_SENDMSG:
	case BPF_CGROUP_UDP4_RECVMSG:
	case BPF_CGROUP_UDP6_RECVMSG:
		ptype = BPF_PROG_TYPE_CGROUP_SOCK_ADDR;
		break;
	case BPF_CGROUP_SOCK_OPS:
		ptype = BPF_PROG_TYPE_SOCK_OPS;
		break;
	case BPF_CGROUP_DEVICE:
		ptype = BPF_PROG_TYPE_CGROUP_DEVICE;
		break;
	case BPF_SK_MSG_VERDICT:
		ptype = BPF_PROG_TYPE_SK_MSG;
		break;
	case BPF_SK_SKB_STREAM_PARSER:
	case BPF_SK_SKB_STREAM_VERDICT:
		ptype = BPF_PROG_TYPE_SK_SKB;
		break;
	case BPF_LIRC_MODE2:
		ptype = BPF_PROG_TYPE_LIRC_MODE2;
		break;
	case BPF_FLOW_DISSECTOR:
		ptype = BPF_PROG_TYPE_FLOW_DISSECTOR;
		break;
	case BPF_CGROUP_SYSCTL:
		ptype = BPF_PROG_TYPE_CGROUP_SYSCTL;
		break;
	case BPF_CGROUP_GETSOCKOPT:
	case BPF_CGROUP_SETSOCKOPT:
		ptype = BPF_PROG_TYPE_CGROUP_SOCKOPT;
		break;
	default:
		return -EINVAL;
	}

	prog = FUNC4(attr->attach_bpf_fd, ptype);
	if (FUNC1(prog))
		return FUNC2(prog);

	if (FUNC3(prog, attr->attach_type)) {
		FUNC5(prog);
		return -EINVAL;
	}

	switch (ptype) {
	case BPF_PROG_TYPE_SK_SKB:
	case BPF_PROG_TYPE_SK_MSG:
		ret = FUNC10(attr, prog);
		break;
	case BPF_PROG_TYPE_LIRC_MODE2:
		ret = FUNC8(attr, prog);
		break;
	case BPF_PROG_TYPE_FLOW_DISSECTOR:
		ret = FUNC9(attr, prog);
		break;
	default:
		ret = FUNC7(attr, ptype, prog);
	}

	if (ret)
		FUNC5(prog);
	return ret;
}