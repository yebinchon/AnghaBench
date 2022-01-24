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
typedef  void* umode_t ;
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  substring_t ;
struct hfs_sb_info {int s_file_umask; int s_dir_umask; int s_quiet; int part; int session; void* nls_io; void* nls_disk; int /*<<< orphan*/  s_creator; int /*<<< orphan*/  s_type; int /*<<< orphan*/  s_gid; int /*<<< orphan*/  s_uid; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int MAX_OPT_ARGS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 void* FUNC6 (char*) ; 
 void* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int*) ; 
 char* FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  opt_codepage 139 
#define  opt_creator 138 
#define  opt_dir_umask 137 
#define  opt_file_umask 136 
#define  opt_gid 135 
#define  opt_iocharset 134 
#define  opt_part 133 
#define  opt_quiet 132 
#define  opt_session 131 
#define  opt_type 130 
#define  opt_uid 129 
#define  opt_umask 128 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 char* FUNC16 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(char *options, struct hfs_sb_info *hsb)
{
	char *p;
	substring_t args[MAX_OPT_ARGS];
	int tmp, token;

	/* initialize the sb with defaults */
	hsb->s_uid = FUNC2();
	hsb->s_gid = FUNC1();
	hsb->s_file_umask = 0133;
	hsb->s_dir_umask = 0022;
	hsb->s_type = hsb->s_creator = FUNC0(0x3f3f3f3f);	/* == '????' */
	hsb->s_quiet = 0;
	hsb->part = -1;
	hsb->session = -1;

	if (!options)
		return 1;

	while ((p = FUNC16(&options, ",")) != NULL) {
		if (!*p)
			continue;

		token = FUNC14(p, tokens, args);
		switch (token) {
		case opt_uid:
			if (FUNC11(&args[0], &tmp)) {
				FUNC15("uid requires an argument\n");
				return 0;
			}
			hsb->s_uid = FUNC9(FUNC3(), (uid_t)tmp);
			if (!FUNC17(hsb->s_uid)) {
				FUNC15("invalid uid %d\n", tmp);
				return 0;
			}
			break;
		case opt_gid:
			if (FUNC11(&args[0], &tmp)) {
				FUNC15("gid requires an argument\n");
				return 0;
			}
			hsb->s_gid = FUNC8(FUNC3(), (gid_t)tmp);
			if (!FUNC4(hsb->s_gid)) {
				FUNC15("invalid gid %d\n", tmp);
				return 0;
			}
			break;
		case opt_umask:
			if (FUNC12(&args[0], &tmp)) {
				FUNC15("umask requires a value\n");
				return 0;
			}
			hsb->s_file_umask = (umode_t)tmp;
			hsb->s_dir_umask = (umode_t)tmp;
			break;
		case opt_file_umask:
			if (FUNC12(&args[0], &tmp)) {
				FUNC15("file_umask requires a value\n");
				return 0;
			}
			hsb->s_file_umask = (umode_t)tmp;
			break;
		case opt_dir_umask:
			if (FUNC12(&args[0], &tmp)) {
				FUNC15("dir_umask requires a value\n");
				return 0;
			}
			hsb->s_dir_umask = (umode_t)tmp;
			break;
		case opt_part:
			if (FUNC11(&args[0], &hsb->part)) {
				FUNC15("part requires an argument\n");
				return 0;
			}
			break;
		case opt_session:
			if (FUNC11(&args[0], &hsb->session)) {
				FUNC15("session requires an argument\n");
				return 0;
			}
			break;
		case opt_type:
			if (FUNC10(&args[0], &hsb->s_type)) {
				FUNC15("type requires a 4 character value\n");
				return 0;
			}
			break;
		case opt_creator:
			if (FUNC10(&args[0], &hsb->s_creator)) {
				FUNC15("creator requires a 4 character value\n");
				return 0;
			}
			break;
		case opt_quiet:
			hsb->s_quiet = 1;
			break;
		case opt_codepage:
			if (hsb->nls_disk) {
				FUNC15("unable to change codepage\n");
				return 0;
			}
			p = FUNC13(&args[0]);
			if (p)
				hsb->nls_disk = FUNC6(p);
			if (!hsb->nls_disk) {
				FUNC15("unable to load codepage \"%s\"\n", p);
				FUNC5(p);
				return 0;
			}
			FUNC5(p);
			break;
		case opt_iocharset:
			if (hsb->nls_io) {
				FUNC15("unable to change iocharset\n");
				return 0;
			}
			p = FUNC13(&args[0]);
			if (p)
				hsb->nls_io = FUNC6(p);
			if (!hsb->nls_io) {
				FUNC15("unable to load iocharset \"%s\"\n", p);
				FUNC5(p);
				return 0;
			}
			FUNC5(p);
			break;
		default:
			return 0;
		}
	}

	if (hsb->nls_disk && !hsb->nls_io) {
		hsb->nls_io = FUNC7();
		if (!hsb->nls_io) {
			FUNC15("unable to load default iocharset\n");
			return 0;
		}
	}
	hsb->s_dir_umask &= 0777;
	hsb->s_file_umask &= 0577;

	return 1;
}