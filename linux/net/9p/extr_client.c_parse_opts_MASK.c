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
struct p9_client {int proto_version; int msize; int /*<<< orphan*/ * trans_mod; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_OPT_ARGS ; 
#define  Opt_legacy 131 
#define  Opt_msize 130 
#define  Opt_trans 129 
#define  Opt_version 128 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int p9_proto_2000L ; 
 int p9_proto_legacy ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* FUNC8 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(char *opts, struct p9_client *clnt)
{
	char *options, *tmp_options;
	char *p;
	substring_t args[MAX_OPT_ARGS];
	int option;
	char *s;
	int ret = 0;

	clnt->proto_version = p9_proto_2000L;
	clnt->msize = 8192;

	if (!opts)
		return 0;

	tmp_options = FUNC2(opts, GFP_KERNEL);
	if (!tmp_options) {
		FUNC6(P9_DEBUG_ERROR,
			 "failed to allocate copy of option string\n");
		return -ENOMEM;
	}
	options = tmp_options;

	while ((p = FUNC8(&options, ",")) != NULL) {
		int token, r;
		if (!*p)
			continue;
		token = FUNC5(p, tokens, args);
		switch (token) {
		case Opt_msize:
			r = FUNC3(&args[0], &option);
			if (r < 0) {
				FUNC6(P9_DEBUG_ERROR,
					 "integer field, but no integer?\n");
				ret = r;
				continue;
			}
			if (option < 4096) {
				FUNC6(P9_DEBUG_ERROR,
					 "msize should be at least 4k\n");
				ret = -EINVAL;
				continue;
			}
			clnt->msize = option;
			break;
		case Opt_trans:
			s = FUNC4(&args[0]);
			if (!s) {
				ret = -ENOMEM;
				FUNC6(P9_DEBUG_ERROR,
					 "problem allocating copy of trans arg\n");
				goto free_and_return;
			}

			FUNC10(clnt->trans_mod);
			clnt->trans_mod = FUNC9(s);
			if (clnt->trans_mod == NULL) {
				FUNC7("Could not find request transport: %s\n",
					s);
				ret = -EINVAL;
			}
			FUNC1(s);
			break;
		case Opt_legacy:
			clnt->proto_version = p9_proto_legacy;
			break;
		case Opt_version:
			s = FUNC4(&args[0]);
			if (!s) {
				ret = -ENOMEM;
				FUNC6(P9_DEBUG_ERROR,
					 "problem allocating copy of version arg\n");
				goto free_and_return;
			}
			r = FUNC0(s);
			if (r < 0)
				ret = r;
			else
				clnt->proto_version = r;
			FUNC1(s);
			break;
		default:
			continue;
		}
	}

free_and_return:
	if (ret)
		FUNC10(clnt->trans_mod);
	FUNC1(tmp_options);
	return ret;
}