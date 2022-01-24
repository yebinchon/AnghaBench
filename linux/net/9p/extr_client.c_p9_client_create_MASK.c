#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct p9_client {int msize; TYPE_1__* trans_mod; int /*<<< orphan*/ * fcall_cache; int /*<<< orphan*/  proto_version; int /*<<< orphan*/  reqs; int /*<<< orphan*/  fids; int /*<<< orphan*/  lock; int /*<<< orphan*/  name; int /*<<< orphan*/ * trans; } ;
struct TYPE_5__ {char* nodename; } ;
struct TYPE_4__ {int (* create ) (struct p9_client*,char const*,char*) ;int maxsize; int /*<<< orphan*/  (* close ) (struct p9_client*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROTONOSUPPORT ; 
 struct p9_client* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 int /*<<< orphan*/  P9_DEBUG_MUX ; 
 scalar_t__ P9_HDRSZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct p9_client*) ; 
 struct p9_client* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC6 (struct p9_client*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (char*,struct p9_client*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*) ; 
 int FUNC11 (struct p9_client*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct p9_client*) ; 
 TYPE_3__* FUNC13 () ; 
 TYPE_1__* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

struct p9_client *FUNC16(const char *dev_name, char *options)
{
	int err;
	struct p9_client *clnt;
	char *client_id;

	err = 0;
	clnt = FUNC3(sizeof(struct p9_client), GFP_KERNEL);
	if (!clnt)
		return FUNC0(-ENOMEM);

	clnt->trans_mod = NULL;
	clnt->trans = NULL;
	clnt->fcall_cache = NULL;

	client_id = FUNC13()->nodename;
	FUNC5(clnt->name, client_id, FUNC10(client_id) + 1);

	FUNC9(&clnt->lock);
	FUNC1(&clnt->fids);
	FUNC1(&clnt->reqs);

	err = FUNC8(options, clnt);
	if (err < 0)
		goto free_client;

	if (!clnt->trans_mod)
		clnt->trans_mod = FUNC14();

	if (clnt->trans_mod == NULL) {
		err = -EPROTONOSUPPORT;
		FUNC7(P9_DEBUG_ERROR,
			 "No transport defined or default transport\n");
		goto free_client;
	}

	FUNC7(P9_DEBUG_MUX, "clnt %p trans %p msize %d protocol %d\n",
		 clnt, clnt->trans_mod, clnt->msize, clnt->proto_version);

	err = clnt->trans_mod->create(clnt, dev_name, options);
	if (err)
		goto put_trans;

	if (clnt->msize > clnt->trans_mod->maxsize)
		clnt->msize = clnt->trans_mod->maxsize;

	if (clnt->msize < 4096) {
		FUNC7(P9_DEBUG_ERROR,
			 "Please specify a msize of at least 4k\n");
		err = -EINVAL;
		goto close_trans;
	}

	err = FUNC6(clnt);
	if (err)
		goto close_trans;

	/* P9_HDRSZ + 4 is the smallest packet header we can have that is
	 * followed by data accessed from userspace by read
	 */
	clnt->fcall_cache =
		FUNC4("9p-fcall-cache", clnt->msize,
					   0, 0, P9_HDRSZ + 4,
					   clnt->msize - (P9_HDRSZ + 4),
					   NULL);

	return clnt;

close_trans:
	clnt->trans_mod->close(clnt);
put_trans:
	FUNC15(clnt->trans_mod);
free_client:
	FUNC2(clnt);
	return FUNC0(err);
}