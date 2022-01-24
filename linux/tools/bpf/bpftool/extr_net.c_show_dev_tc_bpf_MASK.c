#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ip_devname_ifindex {int /*<<< orphan*/  ifindex; int /*<<< orphan*/  devname; } ;
struct bpf_tcinfo_t {int used_len; int is_qdisc; TYPE_1__* handle_array; scalar_t__ array_len; } ;
struct bpf_filter_t {char* kind; int /*<<< orphan*/  ifindex; int /*<<< orphan*/  devname; } ;
struct TYPE_2__ {char* kind; int handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  TC_H_CLSACT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TC_H_MIN_EGRESS ; 
 int /*<<< orphan*/  TC_H_MIN_INGRESS ; 
 int TC_H_ROOT ; 
 int /*<<< orphan*/  dump_class_qdisc_nlmsg ; 
 int /*<<< orphan*/  dump_filter_nlmsg ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bpf_tcinfo_t*) ; 
 int FUNC3 (int,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct bpf_filter_t*) ; 
 int FUNC4 (int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bpf_tcinfo_t*) ; 

__attribute__((used)) static int FUNC5(int sock, unsigned int nl_pid,
			   struct ip_devname_ifindex *dev)
{
	struct bpf_filter_t filter_info;
	struct bpf_tcinfo_t tcinfo;
	int i, handle, ret = 0;

	tcinfo.handle_array = NULL;
	tcinfo.used_len = 0;
	tcinfo.array_len = 0;

	tcinfo.is_qdisc = false;
	ret = FUNC2(sock, nl_pid, dev->ifindex,
				  dump_class_qdisc_nlmsg, &tcinfo);
	if (ret)
		goto out;

	tcinfo.is_qdisc = true;
	ret = FUNC4(sock, nl_pid, dev->ifindex,
				  dump_class_qdisc_nlmsg, &tcinfo);
	if (ret)
		goto out;

	filter_info.devname = dev->devname;
	filter_info.ifindex = dev->ifindex;
	for (i = 0; i < tcinfo.used_len; i++) {
		filter_info.kind = tcinfo.handle_array[i].kind;
		ret = FUNC3(sock, nl_pid, dev->ifindex,
					   tcinfo.handle_array[i].handle,
					   dump_filter_nlmsg, &filter_info);
		if (ret)
			goto out;
	}

	/* root, ingress and egress handle */
	handle = TC_H_ROOT;
	filter_info.kind = "root";
	ret = FUNC3(sock, nl_pid, dev->ifindex, handle,
				   dump_filter_nlmsg, &filter_info);
	if (ret)
		goto out;

	handle = FUNC0(TC_H_CLSACT, TC_H_MIN_INGRESS);
	filter_info.kind = "clsact/ingress";
	ret = FUNC3(sock, nl_pid, dev->ifindex, handle,
				   dump_filter_nlmsg, &filter_info);
	if (ret)
		goto out;

	handle = FUNC0(TC_H_CLSACT, TC_H_MIN_EGRESS);
	filter_info.kind = "clsact/egress";
	ret = FUNC3(sock, nl_pid, dev->ifindex, handle,
				   dump_filter_nlmsg, &filter_info);
	if (ret)
		goto out;

out:
	FUNC1(tcinfo.handle_array);
	return 0;
}