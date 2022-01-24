#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bpf_prog_test_run_attr {int prog_fd; int data_size_in; int ctx_size_in; int data_size_out; int retval; int /*<<< orphan*/  duration; struct bpf_flow_keys* ctx_in; struct bpf_flow_keys* data_out; int /*<<< orphan*/ * data_in; } ;
struct bpf_object {int dummy; } ;
struct bpf_flow_keys {int flags; } ;
typedef  int /*<<< orphan*/  flow_keys ;
typedef  int /*<<< orphan*/  ctx ;
typedef  int __u32 ;
struct TYPE_5__ {int dport; scalar_t__ sport; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  name; TYPE_2__ keys; int /*<<< orphan*/  pkt; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  BPF_FLOW_DISSECTOR ; 
 int BPF_FLOW_DISSECTOR_F_PARSE_1ST_FRAG ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct bpf_flow_keys,TYPE_2__) ; 
 int FUNC5 (struct bpf_object**,char*,char*,char*,char*,int*,int*) ; 
 int FUNC6 (int,int*) ; 
 int FUNC7 (int,int*,struct bpf_flow_keys*) ; 
 int /*<<< orphan*/  FUNC8 (struct bpf_object*) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct bpf_prog_test_run_attr*) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC13 (char*) ; 
 TYPE_1__* tests ; 
 int FUNC14 (int,int /*<<< orphan*/ *,int) ; 

void FUNC15(void)
{
	int i, err, prog_fd, keys_fd = -1, tap_fd;
	struct bpf_object *obj;
	__u32 duration = 0;

	err = FUNC5(&obj, "./bpf_flow.o", "flow_dissector",
			    "jmp_table", "last_dissection", &prog_fd, &keys_fd);
	if (FUNC3(err))
		return;

	for (i = 0; i < FUNC0(tests); i++) {
		struct bpf_flow_keys flow_keys;
		struct bpf_prog_test_run_attr tattr = {
			.prog_fd = prog_fd,
			.data_in = &tests[i].pkt,
			.data_size_in = sizeof(tests[i].pkt),
			.data_out = &flow_keys,
		};
		static struct bpf_flow_keys ctx = {};

		if (tests[i].flags) {
			tattr.ctx_in = &ctx;
			tattr.ctx_size_in = sizeof(ctx);
			ctx.flags = tests[i].flags;
		}

		err = FUNC11(&tattr);
		FUNC2(tattr.data_size_out != sizeof(flow_keys) ||
			   err || tattr.retval != 1,
			   tests[i].name,
			   "err %d errno %d retval %d duration %d size %u/%lu\n",
			   err, errno, tattr.retval, tattr.duration,
			   tattr.data_size_out, sizeof(flow_keys));
		FUNC4(tests[i].name, flow_keys, tests[i].keys);
	}

	/* Do the same tests but for skb-less flow dissector.
	 * We use a known path in the net/tun driver that calls
	 * eth_get_headlen and we manually export bpf_flow_keys
	 * via BPF map in this case.
	 */

	err = FUNC9(prog_fd, 0, BPF_FLOW_DISSECTOR, 0);
	FUNC1(err, "bpf_prog_attach", "err %d errno %d\n", err, errno);

	tap_fd = FUNC12("tap0");
	FUNC1(tap_fd < 0, "create_tap", "tap_fd %d errno %d\n", tap_fd, errno);
	err = FUNC13("tap0");
	FUNC1(err, "ifup", "err %d errno %d\n", err, errno);

	for (i = 0; i < FUNC0(tests); i++) {
		/* Keep in sync with 'flags' from eth_get_headlen. */
		__u32 eth_get_headlen_flags =
			BPF_FLOW_DISSECTOR_F_PARSE_1ST_FRAG;
		struct bpf_prog_test_run_attr tattr = {};
		struct bpf_flow_keys flow_keys = {};
		__u32 key = (__u32)(tests[i].keys.sport) << 16 |
			    tests[i].keys.dport;

		/* For skb-less case we can't pass input flags; run
		 * only the tests that have a matching set of flags.
		 */

		if (tests[i].flags != eth_get_headlen_flags)
			continue;

		err = FUNC14(tap_fd, &tests[i].pkt, sizeof(tests[i].pkt));
		FUNC1(err < 0, "tx_tap", "err %d errno %d\n", err, errno);

		err = FUNC7(keys_fd, &key, &flow_keys);
		FUNC2(err, tests[i].name, "bpf_map_lookup_elem %d\n", err);

		FUNC2(err, tests[i].name, "skb-less err %d\n", err);
		FUNC4(tests[i].name, flow_keys, tests[i].keys);

		err = FUNC6(keys_fd, &key);
		FUNC2(err, tests[i].name, "bpf_map_delete_elem %d\n", err);
	}

	FUNC10(prog_fd, BPF_FLOW_DISSECTOR);
	FUNC8(obj);
}