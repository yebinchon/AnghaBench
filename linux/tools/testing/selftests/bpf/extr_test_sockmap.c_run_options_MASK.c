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
struct sockmap_options {int drop_expected; int base; int sendpage; int /*<<< orphan*/  rate; int /*<<< orphan*/  verbose; } ;

/* Variables and functions */
 int BASE ; 
 int BASE_SENDPAGE ; 
 int /*<<< orphan*/  BPF_ANY ; 
 int /*<<< orphan*/  BPF_CGROUP_SOCK_OPS ; 
 int BPF_F_INGRESS ; 
 int /*<<< orphan*/  BPF_SK_MSG_VERDICT ; 
 int /*<<< orphan*/  BPF_SK_SKB_STREAM_PARSER ; 
 int /*<<< orphan*/  BPF_SK_SKB_STREAM_VERDICT ; 
 int PING_PONG ; 
 int SENDMSG ; 
 int SENDPAGE ; 
 scalar_t__ FUNC0 (int,int*,int*) ; 
 int FUNC1 (int,int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int c1 ; 
 int c2 ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC5 (int /*<<< orphan*/ ,struct sockmap_options*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int* map_fd ; 
 int p1 ; 
 int p2 ; 
 int* prog_fd ; 
 int s1 ; 
 int s2 ; 
 int FUNC7 (struct sockmap_options*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int txmsg_apply ; 
 int txmsg_cork ; 
 scalar_t__ txmsg_drop ; 
 int txmsg_end ; 
 int txmsg_end_push ; 
 scalar_t__ txmsg_ingress ; 
 scalar_t__ txmsg_noisy ; 
 scalar_t__ txmsg_pass ; 
 int txmsg_pop ; 
 scalar_t__ txmsg_redir ; 
 scalar_t__ txmsg_redir_noisy ; 
 scalar_t__ txmsg_skb ; 
 int txmsg_start ; 
 int txmsg_start_pop ; 
 int txmsg_start_push ; 

__attribute__((used)) static int FUNC10(struct sockmap_options *options, int cg_fd,  int test)
{
	int i, key, next_key, err, tx_prog_fd = -1, zero = 0;

	/* If base test skip BPF setup */
	if (test == BASE || test == BASE_SENDPAGE)
		goto run;

	/* Attach programs to sockmap */
	err = FUNC2(prog_fd[0], map_fd[0],
				BPF_SK_SKB_STREAM_PARSER, 0);
	if (err) {
		FUNC6(stderr,
			"ERROR: bpf_prog_attach (sockmap %i->%i): %d (%s)\n",
			prog_fd[0], map_fd[0], err, FUNC9(errno));
		return err;
	}

	err = FUNC2(prog_fd[1], map_fd[0],
				BPF_SK_SKB_STREAM_VERDICT, 0);
	if (err) {
		FUNC6(stderr, "ERROR: bpf_prog_attach (sockmap): %d (%s)\n",
			err, FUNC9(errno));
		return err;
	}

	/* Attach to cgroups */
	err = FUNC2(prog_fd[2], cg_fd, BPF_CGROUP_SOCK_OPS, 0);
	if (err) {
		FUNC6(stderr, "ERROR: bpf_prog_attach (groups): %d (%s)\n",
			err, FUNC9(errno));
		return err;
	}

run:
	err = FUNC8(options->verbose);
	if (err) {
		FUNC6(stderr, "ERROR: test socket failed: %d\n", err);
		goto out;
	}

	/* Attach txmsg program to sockmap */
	if (txmsg_pass)
		tx_prog_fd = prog_fd[3];
	else if (txmsg_noisy)
		tx_prog_fd = prog_fd[4];
	else if (txmsg_redir)
		tx_prog_fd = prog_fd[5];
	else if (txmsg_redir_noisy)
		tx_prog_fd = prog_fd[6];
	else if (txmsg_drop)
		tx_prog_fd = prog_fd[9];
	/* apply and cork must be last */
	else if (txmsg_apply)
		tx_prog_fd = prog_fd[7];
	else if (txmsg_cork)
		tx_prog_fd = prog_fd[8];
	else
		tx_prog_fd = 0;

	if (tx_prog_fd) {
		int redir_fd, i = 0;

		err = FUNC2(tx_prog_fd,
				      map_fd[1], BPF_SK_MSG_VERDICT, 0);
		if (err) {
			FUNC6(stderr,
				"ERROR: bpf_prog_attach (txmsg): %d (%s)\n",
				err, FUNC9(errno));
			goto out;
		}

		err = FUNC1(map_fd[1], &i, &c1, BPF_ANY);
		if (err) {
			FUNC6(stderr,
				"ERROR: bpf_map_update_elem (txmsg):  %d (%s\n",
				err, FUNC9(errno));
			goto out;
		}

		if (txmsg_redir || txmsg_redir_noisy)
			redir_fd = c2;
		else
			redir_fd = c1;

		err = FUNC1(map_fd[2], &i, &redir_fd, BPF_ANY);
		if (err) {
			FUNC6(stderr,
				"ERROR: bpf_map_update_elem (txmsg):  %d (%s\n",
				err, FUNC9(errno));
			goto out;
		}

		if (txmsg_apply) {
			err = FUNC1(map_fd[3],
						  &i, &txmsg_apply, BPF_ANY);
			if (err) {
				FUNC6(stderr,
					"ERROR: bpf_map_update_elem (apply_bytes):  %d (%s\n",
					err, FUNC9(errno));
				goto out;
			}
		}

		if (txmsg_cork) {
			err = FUNC1(map_fd[4],
						  &i, &txmsg_cork, BPF_ANY);
			if (err) {
				FUNC6(stderr,
					"ERROR: bpf_map_update_elem (cork_bytes):  %d (%s\n",
					err, FUNC9(errno));
				goto out;
			}
		}

		if (txmsg_start) {
			err = FUNC1(map_fd[5],
						  &i, &txmsg_start, BPF_ANY);
			if (err) {
				FUNC6(stderr,
					"ERROR: bpf_map_update_elem (txmsg_start):  %d (%s)\n",
					err, FUNC9(errno));
				goto out;
			}
		}

		if (txmsg_end) {
			i = 1;
			err = FUNC1(map_fd[5],
						  &i, &txmsg_end, BPF_ANY);
			if (err) {
				FUNC6(stderr,
					"ERROR: bpf_map_update_elem (txmsg_end):  %d (%s)\n",
					err, FUNC9(errno));
				goto out;
			}
		}

		if (txmsg_start_push) {
			i = 2;
			err = FUNC1(map_fd[5],
						  &i, &txmsg_start_push, BPF_ANY);
			if (err) {
				FUNC6(stderr,
					"ERROR: bpf_map_update_elem (txmsg_start_push):  %d (%s)\n",
					err, FUNC9(errno));
				goto out;
			}
		}

		if (txmsg_end_push) {
			i = 3;
			err = FUNC1(map_fd[5],
						  &i, &txmsg_end_push, BPF_ANY);
			if (err) {
				FUNC6(stderr,
					"ERROR: bpf_map_update_elem %i@%i (txmsg_end_push):  %d (%s)\n",
					txmsg_end_push, i, err, FUNC9(errno));
				goto out;
			}
		}

		if (txmsg_start_pop) {
			i = 4;
			err = FUNC1(map_fd[5],
						  &i, &txmsg_start_pop, BPF_ANY);
			if (err) {
				FUNC6(stderr,
					"ERROR: bpf_map_update_elem %i@%i (txmsg_start_pop):  %d (%s)\n",
					txmsg_start_pop, i, err, FUNC9(errno));
				goto out;
			}
		} else {
			i = 4;
			FUNC1(map_fd[5],
						  &i, &txmsg_start_pop, BPF_ANY);
		}

		if (txmsg_pop) {
			i = 5;
			err = FUNC1(map_fd[5],
						  &i, &txmsg_pop, BPF_ANY);
			if (err) {
				FUNC6(stderr,
					"ERROR: bpf_map_update_elem %i@%i (txmsg_pop):  %d (%s)\n",
					txmsg_pop, i, err, FUNC9(errno));
				goto out;
			}
		} else {
			i = 5;
			FUNC1(map_fd[5],
					    &i, &txmsg_pop, BPF_ANY);

		}

		if (txmsg_ingress) {
			int in = BPF_F_INGRESS;

			i = 0;
			err = FUNC1(map_fd[6], &i, &in, BPF_ANY);
			if (err) {
				FUNC6(stderr,
					"ERROR: bpf_map_update_elem (txmsg_ingress): %d (%s)\n",
					err, FUNC9(errno));
			}
			i = 1;
			err = FUNC1(map_fd[1], &i, &p1, BPF_ANY);
			if (err) {
				FUNC6(stderr,
					"ERROR: bpf_map_update_elem (p1 txmsg): %d (%s)\n",
					err, FUNC9(errno));
			}
			err = FUNC1(map_fd[2], &i, &p1, BPF_ANY);
			if (err) {
				FUNC6(stderr,
					"ERROR: bpf_map_update_elem (p1 redir): %d (%s)\n",
					err, FUNC9(errno));
			}

			i = 2;
			err = FUNC1(map_fd[2], &i, &p2, BPF_ANY);
			if (err) {
				FUNC6(stderr,
					"ERROR: bpf_map_update_elem (p2 txmsg): %d (%s)\n",
					err, FUNC9(errno));
			}
		}

		if (txmsg_skb) {
			int skb_fd = (test == SENDMSG || test == SENDPAGE) ?
					p2 : p1;
			int ingress = BPF_F_INGRESS;

			i = 0;
			err = FUNC1(map_fd[7],
						  &i, &ingress, BPF_ANY);
			if (err) {
				FUNC6(stderr,
					"ERROR: bpf_map_update_elem (txmsg_ingress): %d (%s)\n",
					err, FUNC9(errno));
			}

			i = 3;
			err = FUNC1(map_fd[0],
						  &i, &skb_fd, BPF_ANY);
			if (err) {
				FUNC6(stderr,
					"ERROR: bpf_map_update_elem (c1 sockmap): %d (%s)\n",
					err, FUNC9(errno));
			}
		}
	}

	if (txmsg_drop)
		options->drop_expected = true;

	if (test == PING_PONG)
		err = FUNC5(options->rate, options);
	else if (test == SENDMSG) {
		options->base = false;
		options->sendpage = false;
		err = FUNC7(options);
	} else if (test == SENDPAGE) {
		options->base = false;
		options->sendpage = true;
		err = FUNC7(options);
	} else if (test == BASE) {
		options->base = true;
		options->sendpage = false;
		err = FUNC7(options);
	} else if (test == BASE_SENDPAGE) {
		options->base = true;
		options->sendpage = true;
		err = FUNC7(options);
	} else
		FUNC6(stderr, "unknown test\n");
out:
	/* Detatch and zero all the maps */
	FUNC3(prog_fd[2], cg_fd, BPF_CGROUP_SOCK_OPS);
	FUNC3(prog_fd[0], map_fd[0], BPF_SK_SKB_STREAM_PARSER);
	FUNC3(prog_fd[1], map_fd[0], BPF_SK_SKB_STREAM_VERDICT);
	if (tx_prog_fd >= 0)
		FUNC3(tx_prog_fd, map_fd[1], BPF_SK_MSG_VERDICT);

	for (i = 0; i < 8; i++) {
		key = next_key = 0;
		FUNC1(map_fd[i], &key, &zero, BPF_ANY);
		while (FUNC0(map_fd[i], &key, &next_key) == 0) {
			FUNC1(map_fd[i], &key, &zero, BPF_ANY);
			key = next_key;
		}
	}

	FUNC4(s1);
	FUNC4(s2);
	FUNC4(p1);
	FUNC4(p2);
	FUNC4(c1);
	FUNC4(c2);
	return err;
}