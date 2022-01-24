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
struct sockmap_options {int verbose; int data_test; int iov_count; int iov_length; int rate; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int BASE ; 
 int BASE_SENDPAGE ; 
 char* BPF_SOCKMAP_FILENAME ; 
 int /*<<< orphan*/  O_DIRECTORY ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PING_PONG ; 
 int SENDMSG ; 
 int SENDPAGE ; 
 int /*<<< orphan*/  SIGINT ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int,char**,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  long_options ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 int FUNC5 (char*) ; 
 int FUNC6 (struct sockmap_options*,int,int) ; 
 int running ; 
 int /*<<< orphan*/  running_handler ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 void* txmsg_apply ; 
 void* txmsg_cork ; 
 void* txmsg_end ; 
 void* txmsg_end_push ; 
 void* txmsg_pop ; 
 void* txmsg_start ; 
 void* txmsg_start_pop ; 
 void* txmsg_start_push ; 
 int /*<<< orphan*/  FUNC11 (char**) ; 

int FUNC12(int argc, char **argv)
{
	int iov_count = 1, length = 1024, rate = 1;
	struct sockmap_options options = {0};
	int opt, longindex, err, cg_fd = 0;
	char *bpf_file = BPF_SOCKMAP_FILENAME;
	int test = PING_PONG;

	if (argc < 2)
		return FUNC10(-1);

	while ((opt = FUNC3(argc, argv, ":dhvc:r:i:l:t:p:q:",
				  long_options, &longindex)) != -1) {
		switch (opt) {
		case 's':
			txmsg_start = FUNC0(optarg);
			break;
		case 'e':
			txmsg_end = FUNC0(optarg);
			break;
		case 'p':
			txmsg_start_push = FUNC0(optarg);
			break;
		case 'q':
			txmsg_end_push = FUNC0(optarg);
			break;
		case 'w':
			txmsg_start_pop = FUNC0(optarg);
			break;
		case 'x':
			txmsg_pop = FUNC0(optarg);
			break;
		case 'a':
			txmsg_apply = FUNC0(optarg);
			break;
		case 'k':
			txmsg_cork = FUNC0(optarg);
			break;
		case 'c':
			cg_fd = FUNC4(optarg, O_DIRECTORY, O_RDONLY);
			if (cg_fd < 0) {
				FUNC2(stderr,
					"ERROR: (%i) open cg path failed: %s\n",
					cg_fd, optarg);
				return cg_fd;
			}
			break;
		case 'r':
			rate = FUNC0(optarg);
			break;
		case 'v':
			options.verbose = 1;
			break;
		case 'i':
			iov_count = FUNC0(optarg);
			break;
		case 'l':
			length = FUNC0(optarg);
			break;
		case 'd':
			options.data_test = true;
			break;
		case 't':
			if (FUNC8(optarg, "ping") == 0) {
				test = PING_PONG;
			} else if (FUNC8(optarg, "sendmsg") == 0) {
				test = SENDMSG;
			} else if (FUNC8(optarg, "base") == 0) {
				test = BASE;
			} else if (FUNC8(optarg, "base_sendpage") == 0) {
				test = BASE_SENDPAGE;
			} else if (FUNC8(optarg, "sendpage") == 0) {
				test = SENDPAGE;
			} else {
				FUNC11(argv);
				return -1;
			}
			break;
		case 0:
			break;
		case 'h':
		default:
			FUNC11(argv);
			return -1;
		}
	}

	if (argc <= 3 && cg_fd)
		return FUNC10(cg_fd);

	if (!cg_fd) {
		FUNC2(stderr, "%s requires cgroup option: --cgroup <path>\n",
			argv[0]);
		return -1;
	}

	err = FUNC5(bpf_file);
	if (err) {
		FUNC2(stderr, "populate program: (%s) %s\n",
			bpf_file, FUNC9(errno));
		return 1;
	}
	running = 1;

	/* catch SIGINT */
	FUNC7(SIGINT, running_handler);

	options.iov_count = iov_count;
	options.iov_length = length;
	options.rate = rate;

	err = FUNC6(&options, cg_fd, test);
	FUNC1(cg_fd);
	return err;
}