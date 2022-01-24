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
struct bpf_netdev_t {int used_len; int filter_idx; int /*<<< orphan*/ * devices; scalar_t__ array_len; } ;
struct bpf_attach_info {scalar_t__ flow_dissector_id; } ;
typedef  int /*<<< orphan*/  err_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  NET_END_OBJECT ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  NET_START_OBJECT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  dump_link_nlmsg ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (unsigned int*) ; 
 int FUNC10 (int,unsigned int,int /*<<< orphan*/ ,struct bpf_netdev_t*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int) ; 
 int FUNC12 (int*,char***) ; 
 int FUNC13 (struct bpf_attach_info*) ; 
 int FUNC14 (int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static int FUNC16(int argc, char **argv)
{
	struct bpf_attach_info attach_info = {};
	int i, sock, ret, filter_idx = -1;
	struct bpf_netdev_t dev_array;
	unsigned int nl_pid;
	char err_buf[256];

	if (argc == 2) {
		filter_idx = FUNC12(&argc, &argv);
		if (filter_idx < 1)
			return -1;
	} else if (argc != 0) {
		FUNC15();
	}

	ret = FUNC13(&attach_info);
	if (ret)
		return -1;

	sock = FUNC9(&nl_pid);
	if (sock < 0) {
		FUNC4(stderr, "failed to open netlink sock\n");
		return -1;
	}

	dev_array.devices = NULL;
	dev_array.used_len = 0;
	dev_array.array_len = 0;
	dev_array.filter_idx = filter_idx;

	if (json_output)
		FUNC8(json_wtr);
	NET_START_OBJECT;
	FUNC2("xdp", "%s:\n");
	ret = FUNC10(sock, nl_pid, dump_link_nlmsg, &dev_array);
	FUNC1("\n");

	if (!ret) {
		FUNC2("tc", "%s:\n");
		for (i = 0; i < dev_array.used_len; i++) {
			ret = FUNC14(sock, nl_pid,
					      &dev_array.devices[i]);
			if (ret)
				break;
		}
		FUNC1("\n");
	}

	FUNC2("flow_dissector", "%s:\n");
	if (attach_info.flow_dissector_id > 0)
		FUNC0("id", "id %u", attach_info.flow_dissector_id);
	FUNC1("\n");

	NET_END_OBJECT;
	if (json_output)
		FUNC6(json_wtr);

	if (ret) {
		if (json_output)
			FUNC7(json_wtr);
		FUNC11(ret, err_buf, sizeof(err_buf));
		FUNC4(stderr, "Error: %s\n", err_buf);
	}
	FUNC5(dev_array.devices);
	FUNC3(sock);
	return ret;
}