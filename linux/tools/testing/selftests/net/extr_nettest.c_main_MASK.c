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
struct sock_args {scalar_t__ type; unsigned short port; int has_local_ip; int has_remote_ip; unsigned int protocol; char* password; int use_setsockopt; int use_cmsg; char* dev; scalar_t__ ifindex; int has_grp; int bind_test_only; int has_expected_laddr; int has_expected_raddr; int expected_ifindex; int /*<<< orphan*/  version; } ;
struct protoent {unsigned int p_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_TYPE_EXPECTED_LOCAL ; 
 int /*<<< orphan*/  ADDR_TYPE_EXPECTED_REMOTE ; 
 int /*<<< orphan*/  ADDR_TYPE_LOCAL ; 
 int /*<<< orphan*/  ADDR_TYPE_MCAST ; 
 int /*<<< orphan*/  ADDR_TYPE_REMOTE ; 
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 unsigned short DEFAULT_PORT ; 
 int /*<<< orphan*/  GETOPT_STR ; 
 int INT_MAX ; 
 unsigned int IPPROTO_TCP ; 
 unsigned int IPPROTO_UDP ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ SOCK_RAW ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock_args*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sock_args*) ; 
 int FUNC3 (struct sock_args*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC5 (char*) ; 
 int FUNC6 (int,char**,int /*<<< orphan*/ ) ; 
 struct protoent* FUNC7 (char*) ; 
 int interactive ; 
 scalar_t__ iter ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/ * msg ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 unsigned int prog_timeout ; 
 int quiet ; 
 int /*<<< orphan*/ * FUNC10 (scalar_t__) ; 
 int server_mode ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int,unsigned int*) ; 

int FUNC12(int argc, char *argv[])
{
	struct sock_args args = {
		.version = AF_INET,
		.type    = SOCK_STREAM,
		.port    = DEFAULT_PORT,
	};
	struct protoent *pe;
	unsigned int tmp;
	int forever = 0;

	/* process inputs */
	extern char *optarg;
	int rc = 0;

	/*
	 * process input args
	 */

	while ((rc = FUNC6(argc, argv, GETOPT_STR)) != -1) {
		switch (rc) {
		case 's':
			server_mode = 1;
			break;
		case 'F':
			forever = 1;
			break;
		case 'l':
			args.has_local_ip = 1;
			if (FUNC1(&args, optarg, ADDR_TYPE_LOCAL) < 0)
				return 1;
			break;
		case 'r':
			args.has_remote_ip = 1;
			if (FUNC1(&args, optarg, ADDR_TYPE_REMOTE) < 0)
				return 1;
			break;
		case 'p':
			if (FUNC11(optarg, 1, 65535, &tmp) != 0) {
				FUNC4(stderr, "Invalid port\n");
				return 1;
			}
			args.port = (unsigned short) tmp;
			break;
		case 't':
			if (FUNC11(optarg, 0, INT_MAX,
					&prog_timeout) != 0) {
				FUNC4(stderr, "Invalid timeout\n");
				return 1;
			}
			break;
		case 'D':
			args.type = SOCK_DGRAM;
			break;
		case 'R':
			args.type = SOCK_RAW;
			args.port = 0;
			break;
		case 'P':
			pe = FUNC7(optarg);
			if (pe) {
				args.protocol = pe->p_proto;
			} else {
				if (FUNC11(optarg, 0, 0xffff, &tmp) != 0) {
					FUNC4(stderr, "Invalid protocol\n");
					return 1;
				}
				args.protocol = tmp;
			}
			break;
		case 'n':
			iter = FUNC0(optarg);
			break;
		case 'L':
			msg = FUNC10(FUNC0(optarg));
			break;
		case 'M':
			args.password = optarg;
			break;
		case 'S':
			args.use_setsockopt = 1;
			break;
		case 'C':
			args.use_cmsg = 1;
			break;
		case 'd':
			args.dev = optarg;
			args.ifindex = FUNC5(optarg);
			if (args.ifindex < 0) {
				FUNC4(stderr, "Invalid device name\n");
				return 1;
			}
			break;
		case 'i':
			interactive = 1;
			break;
		case 'g':
			args.has_grp = 1;
			if (FUNC1(&args, optarg, ADDR_TYPE_MCAST) < 0)
				return 1;
			args.type = SOCK_DGRAM;
			break;
		case '6':
			args.version = AF_INET6;
			break;
		case 'b':
			args.bind_test_only = 1;
			break;
		case '0':
			args.has_expected_laddr = 1;
			if (FUNC1(&args, optarg,
					 ADDR_TYPE_EXPECTED_LOCAL))
				return 1;
			break;
		case '1':
			args.has_expected_raddr = 1;
			if (FUNC1(&args, optarg,
					 ADDR_TYPE_EXPECTED_REMOTE))
				return 1;

			break;
		case '2':
			if (FUNC11(optarg, 0, INT_MAX, &tmp) == 0) {
				args.expected_ifindex = (int)tmp;
			} else {
				args.expected_ifindex = FUNC5(optarg);
				if (args.expected_ifindex < 0) {
					FUNC4(stderr,
						"Invalid expected device\n");
					return 1;
				}
			}
			break;
		case 'q':
			quiet = 1;
			break;
		default:
			FUNC9(argv[0]);
			return 1;
		}
	}

	if (args.password &&
	    (!args.has_remote_ip || args.type != SOCK_STREAM)) {
		FUNC8("MD5 passwords apply to TCP only and require a remote ip for the password\n");
		return 1;
	}

	if ((args.use_setsockopt || args.use_cmsg) && !args.ifindex) {
		FUNC4(stderr, "Device binding not specified\n");
		return 1;
	}
	if (args.use_setsockopt || args.use_cmsg)
		args.dev = NULL;

	if (iter == 0) {
		FUNC4(stderr, "Invalid number of messages to send\n");
		return 1;
	}

	if (args.type == SOCK_STREAM && !args.protocol)
		args.protocol = IPPROTO_TCP;
	if (args.type == SOCK_DGRAM && !args.protocol)
		args.protocol = IPPROTO_UDP;

	if ((args.type == SOCK_STREAM || args.type == SOCK_DGRAM) &&
	     args.port == 0) {
		FUNC4(stderr, "Invalid port number\n");
		return 1;
	}

	if (!server_mode && !args.has_grp &&
	    !args.has_remote_ip && !args.has_local_ip) {
		FUNC4(stderr,
			"Local (server mode) or remote IP (client IP) required\n");
		return 1;
	}

	if (interactive) {
		prog_timeout = 0;
		msg = NULL;
	}

	if (server_mode) {
		do {
			rc = FUNC3(&args);
		} while (forever);

		return rc;
	}
	return FUNC2(&args);
}