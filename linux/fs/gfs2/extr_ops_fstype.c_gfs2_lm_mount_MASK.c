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
struct lm_lockstruct {int ls_first; int ls_jid; struct lm_lockops const* ls_ops; } ;
struct lm_lockops {int (* lm_mount ) (struct gfs2_sbd*,char const*) ;int /*<<< orphan*/ * lm_tokens; } ;
struct gfs2_args {int ar_localflocks; char* ar_hostdata; } ;
struct gfs2_sbd {char* sd_proto_name; char* sd_table_name; int /*<<< orphan*/  sd_locking_init; int /*<<< orphan*/  sd_flags; struct gfs2_args sd_args; struct lm_lockstruct sd_lockstruct; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int MAX_OPT_ARGS ; 
#define  Opt_err 132 
#define  Opt_first 131 
#define  Opt_id 130 
#define  Opt_jid 129 
#define  Opt_nodir 128 
 int /*<<< orphan*/  SDF_NOJOURNALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*,char*,...) ; 
 struct lm_lockops gfs2_dlm_ops ; 
 int FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct lm_lockops nolock_ops ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 char* FUNC6 (char**,char*) ; 
 int FUNC7 (struct gfs2_sbd*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct gfs2_sbd *sdp, int silent)
{
	const struct lm_lockops *lm;
	struct lm_lockstruct *ls = &sdp->sd_lockstruct;
	struct gfs2_args *args = &sdp->sd_args;
	const char *proto = sdp->sd_proto_name;
	const char *table = sdp->sd_table_name;
	char *o, *options;
	int ret;

	if (!FUNC5("lock_nolock", proto)) {
		lm = &nolock_ops;
		sdp->sd_args.ar_localflocks = 1;
#ifdef CONFIG_GFS2_FS_LOCKING_DLM
	} else if (!strcmp("lock_dlm", proto)) {
		lm = &gfs2_dlm_ops;
#endif
	} else {
		FUNC4("can't find protocol %s\n", proto);
		return -ENOENT;
	}

	FUNC1(sdp, "Trying to join cluster \"%s\", \"%s\"\n", proto, table);

	ls->ls_ops = lm;
	ls->ls_first = 1;

	for (options = args->ar_hostdata; (o = FUNC6(&options, ":")); ) {
		substring_t tmp[MAX_OPT_ARGS];
		int token, option;

		if (!o || !*o)
			continue;

		token = FUNC3(o, *lm->lm_tokens, tmp);
		switch (token) {
		case Opt_jid:
			ret = FUNC2(&tmp[0], &option);
			if (ret || option < 0) 
				goto hostdata_error;
			if (FUNC8(SDF_NOJOURNALID, &sdp->sd_flags))
				ls->ls_jid = option;
			break;
		case Opt_id:
		case Opt_nodir:
			/* Obsolete, but left for backward compat purposes */
			break;
		case Opt_first:
			ret = FUNC2(&tmp[0], &option);
			if (ret || (option != 0 && option != 1))
				goto hostdata_error;
			ls->ls_first = option;
			break;
		case Opt_err:
		default:
hostdata_error:
			FUNC1(sdp, "unknown hostdata (%s)\n", o);
			return -EINVAL;
		}
	}

	if (lm->lm_mount == NULL) {
		FUNC1(sdp, "Now mounting FS...\n");
		FUNC0(&sdp->sd_locking_init);
		return 0;
	}
	ret = lm->lm_mount(sdp, table);
	if (ret == 0)
		FUNC1(sdp, "Joined cluster. Now mounting FS...\n");
	FUNC0(&sdp->sd_locking_init);
	return ret;
}