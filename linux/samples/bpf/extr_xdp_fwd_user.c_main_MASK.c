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
struct bpf_program {int dummy; } ;
struct bpf_prog_load_attr {char* file; int /*<<< orphan*/  prog_type; } ;
struct bpf_object {int dummy; } ;
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_XDP ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_object*,char*) ; 
 struct bpf_program* FUNC4 (struct bpf_object*,char const*) ; 
 int FUNC5 (struct bpf_prog_load_attr*,struct bpf_object**,int*) ; 
 int FUNC6 (struct bpf_program*) ; 
 int FUNC7 (int,int,int,char*) ; 
 int FUNC8 (int,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (int,char**,char*) ; 
 int FUNC11 (char*) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC14 (int) ; 
 int FUNC15 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

int FUNC17(int argc, char **argv)
{
	struct bpf_prog_load_attr prog_load_attr = {
		.prog_type	= BPF_PROG_TYPE_XDP,
	};
	const char *prog_name = "xdp_fwd";
	struct bpf_program *prog;
	int prog_fd, map_fd = -1;
	char filename[PATH_MAX];
	struct bpf_object *obj;
	int opt, i, idx, err;
	int attach = 1;
	int ret = 0;

	while ((opt = FUNC10(argc, argv, ":dD")) != -1) {
		switch (opt) {
		case 'd':
			attach = 0;
			break;
		case 'D':
			prog_name = "xdp_fwd_direct";
			break;
		default:
			FUNC16(FUNC1(argv[0]));
			return 1;
		}
	}

	if (optind == argc) {
		FUNC16(FUNC1(argv[0]));
		return 1;
	}

	if (attach) {
		FUNC13(filename, sizeof(filename), "%s_kern.o", argv[0]);
		prog_load_attr.file = filename;

		if (FUNC0(filename, O_RDONLY) < 0) {
			FUNC12("error accessing file %s: %s\n",
				filename, FUNC14(errno));
			return 1;
		}

		err = FUNC5(&prog_load_attr, &obj, &prog_fd);
		if (err) {
			FUNC12("Does kernel support devmap lookup?\n");
			/* If not, the error message will be:
			 *  "cannot pass map_type 14 into func bpf_map_lookup_elem#1"
			 */
			return 1;
		}

		prog = FUNC4(obj, prog_name);
		prog_fd = FUNC6(prog);
		if (prog_fd < 0) {
			FUNC12("program not found: %s\n", FUNC14(prog_fd));
			return 1;
		}
		map_fd = FUNC2(FUNC3(obj,
							"xdp_tx_ports"));
		if (map_fd < 0) {
			FUNC12("map not found: %s\n", FUNC14(map_fd));
			return 1;
		}
	}

	for (i = optind; i < argc; ++i) {
		idx = FUNC11(argv[i]);
		if (!idx)
			idx = FUNC15(argv[i], NULL, 0);

		if (!idx) {
			FUNC9(stderr, "Invalid arg\n");
			return 1;
		}
		if (!attach) {
			err = FUNC8(idx, argv[i]);
			if (err)
				ret = err;
		} else {
			err = FUNC7(idx, prog_fd, map_fd, argv[i]);
			if (err)
				ret = err;
		}
	}

	return ret;
}