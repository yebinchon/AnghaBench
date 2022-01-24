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
typedef  int /*<<< orphan*/  substring_t ;
struct p9_rdma_opts {int port; int sq_depth; int rq_depth; int timeout; int privport; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_OPT_ARGS ; 
 int Opt_err ; 
#define  Opt_port 132 
#define  Opt_privport 131 
#define  Opt_rq_depth 130 
#define  Opt_sq_depth 129 
#define  Opt_timeout 128 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 int P9_PORT ; 
 int P9_RDMA_RQ_DEPTH ; 
 int P9_RDMA_SQ_DEPTH ; 
 int P9_RDMA_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC6 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static int FUNC7(char *params, struct p9_rdma_opts *opts)
{
	char *p;
	substring_t args[MAX_OPT_ARGS];
	int option;
	char *options, *tmp_options;

	opts->port = P9_PORT;
	opts->sq_depth = P9_RDMA_SQ_DEPTH;
	opts->rq_depth = P9_RDMA_RQ_DEPTH;
	opts->timeout = P9_RDMA_TIMEOUT;
	opts->privport = false;

	if (!params)
		return 0;

	tmp_options = FUNC1(params, GFP_KERNEL);
	if (!tmp_options) {
		FUNC5(P9_DEBUG_ERROR,
			 "failed to allocate copy of option string\n");
		return -ENOMEM;
	}
	options = tmp_options;

	while ((p = FUNC6(&options, ",")) != NULL) {
		int token;
		int r;
		if (!*p)
			continue;
		token = FUNC3(p, tokens, args);
		if ((token != Opt_err) && (token != Opt_privport)) {
			r = FUNC2(&args[0], &option);
			if (r < 0) {
				FUNC5(P9_DEBUG_ERROR,
					 "integer field, but no integer?\n");
				continue;
			}
		}
		switch (token) {
		case Opt_port:
			opts->port = option;
			break;
		case Opt_sq_depth:
			opts->sq_depth = option;
			break;
		case Opt_rq_depth:
			opts->rq_depth = option;
			break;
		case Opt_timeout:
			opts->timeout = option;
			break;
		case Opt_privport:
			opts->privport = true;
			break;
		default:
			continue;
		}
	}
	/* RQ must be at least as large as the SQ */
	opts->rq_depth = FUNC4(opts->rq_depth, opts->sq_depth);
	FUNC0(tmp_options);
	return 0;
}