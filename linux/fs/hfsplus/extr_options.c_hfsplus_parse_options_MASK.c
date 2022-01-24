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
typedef  int /*<<< orphan*/  umode_t ;
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  substring_t ;
struct hfsplus_sb_info {int part; int session; void* nls; int /*<<< orphan*/  flags; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  umask; int /*<<< orphan*/  type; int /*<<< orphan*/  creator; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  HFSPLUS_SB_FORCE ; 
 int /*<<< orphan*/  HFSPLUS_SB_NOBARRIER ; 
 int /*<<< orphan*/  HFSPLUS_SB_NODECOMPOSE ; 
 int MAX_OPT_ARGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (char*) ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int*) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  opt_barrier 140 
#define  opt_creator 139 
#define  opt_decompose 138 
#define  opt_force 137 
#define  opt_gid 136 
#define  opt_nls 135 
#define  opt_nobarrier 134 
#define  opt_nodecompose 133 
#define  opt_part 132 
#define  opt_session 131 
#define  opt_type 130 
#define  opt_uid 129 
#define  opt_umask 128 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC15 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

int FUNC17(char *input, struct hfsplus_sb_info *sbi)
{
	char *p;
	substring_t args[MAX_OPT_ARGS];
	int tmp, token;

	if (!input)
		goto done;

	while ((p = FUNC15(&input, ",")) != NULL) {
		if (!*p)
			continue;

		token = FUNC12(p, tokens, args);
		switch (token) {
		case opt_creator:
			if (FUNC8(&args[0], &sbi->creator)) {
				FUNC13("creator requires a 4 character value\n");
				return 0;
			}
			break;
		case opt_type:
			if (FUNC8(&args[0], &sbi->type)) {
				FUNC13("type requires a 4 character value\n");
				return 0;
			}
			break;
		case opt_umask:
			if (FUNC10(&args[0], &tmp)) {
				FUNC13("umask requires a value\n");
				return 0;
			}
			sbi->umask = (umode_t)tmp;
			break;
		case opt_uid:
			if (FUNC9(&args[0], &tmp)) {
				FUNC13("uid requires an argument\n");
				return 0;
			}
			sbi->uid = FUNC7(FUNC1(), (uid_t)tmp);
			if (!FUNC16(sbi->uid)) {
				FUNC13("invalid uid specified\n");
				return 0;
			}
			break;
		case opt_gid:
			if (FUNC9(&args[0], &tmp)) {
				FUNC13("gid requires an argument\n");
				return 0;
			}
			sbi->gid = FUNC6(FUNC1(), (gid_t)tmp);
			if (!FUNC2(sbi->gid)) {
				FUNC13("invalid gid specified\n");
				return 0;
			}
			break;
		case opt_part:
			if (FUNC9(&args[0], &sbi->part)) {
				FUNC13("part requires an argument\n");
				return 0;
			}
			break;
		case opt_session:
			if (FUNC9(&args[0], &sbi->session)) {
				FUNC13("session requires an argument\n");
				return 0;
			}
			break;
		case opt_nls:
			if (sbi->nls) {
				FUNC13("unable to change nls mapping\n");
				return 0;
			}
			p = FUNC11(&args[0]);
			if (p)
				sbi->nls = FUNC4(p);
			if (!sbi->nls) {
				FUNC13("unable to load nls mapping \"%s\"\n",
				       p);
				FUNC3(p);
				return 0;
			}
			FUNC3(p);
			break;
		case opt_decompose:
			FUNC0(HFSPLUS_SB_NODECOMPOSE, &sbi->flags);
			break;
		case opt_nodecompose:
			FUNC14(HFSPLUS_SB_NODECOMPOSE, &sbi->flags);
			break;
		case opt_barrier:
			FUNC0(HFSPLUS_SB_NOBARRIER, &sbi->flags);
			break;
		case opt_nobarrier:
			FUNC14(HFSPLUS_SB_NOBARRIER, &sbi->flags);
			break;
		case opt_force:
			FUNC14(HFSPLUS_SB_FORCE, &sbi->flags);
			break;
		default:
			return 0;
		}
	}

done:
	if (!sbi->nls) {
		/* try utf8 first, as this is the old default behaviour */
		sbi->nls = FUNC4("utf8");
		if (!sbi->nls)
			sbi->nls = FUNC5();
		if (!sbi->nls)
			return 0;
	}

	return 1;
}