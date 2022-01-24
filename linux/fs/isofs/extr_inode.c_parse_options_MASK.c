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
struct iso9660_options {char map; int rock; int joliet; int cruft; int hide; int showassoc; unsigned char check; int nocompress; int blocksize; int fmode; int dmode; int uid_set; int gid_set; int utf8; int overriderockperm; int session; int sbsector; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/ * iocharset; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 int ISOFS_INVALID_MODE ; 
 int MAX_OPT_ARGS ; 
#define  Opt_block 150 
#define  Opt_check_r 149 
#define  Opt_check_s 148 
#define  Opt_cruft 147 
#define  Opt_dmode 146 
#define  Opt_gid 145 
#define  Opt_hide 144 
#define  Opt_ignore 143 
#define  Opt_iocharset 142 
#define  Opt_map_a 141 
#define  Opt_map_n 140 
#define  Opt_map_o 139 
#define  Opt_mode 138 
#define  Opt_nocompress 137 
#define  Opt_nojoliet 136 
#define  Opt_norock 135 
#define  Opt_overriderockperm 134 
#define  Opt_sb 133 
#define  Opt_session 132 
#define  Opt_showassoc 131 
#define  Opt_uid 130 
#define  Opt_unhide 129 
#define  Opt_utf8 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(char *options, struct iso9660_options *popt)
{
	char *p;
	int option;

	popt->map = 'n';
	popt->rock = 1;
	popt->joliet = 1;
	popt->cruft = 0;
	popt->hide = 0;
	popt->showassoc = 0;
	popt->check = 'u';		/* unset */
	popt->nocompress = 0;
	popt->blocksize = 1024;
	popt->fmode = popt->dmode = ISOFS_INVALID_MODE;
	popt->uid_set = 0;
	popt->gid_set = 0;
	popt->gid = GLOBAL_ROOT_GID;
	popt->uid = GLOBAL_ROOT_UID;
	popt->iocharset = NULL;
	popt->utf8 = 0;
	popt->overriderockperm = 0;
	popt->session=-1;
	popt->sbsector=-1;
	if (!options)
		return 1;

	while ((p = FUNC8(&options, ",")) != NULL) {
		int token;
		substring_t args[MAX_OPT_ARGS];
		unsigned n;

		if (!*p)
			continue;

		token = FUNC7(p, tokens, args);
		switch (token) {
		case Opt_norock:
			popt->rock = 0;
			break;
		case Opt_nojoliet:
			popt->joliet = 0;
			break;
		case Opt_hide:
			popt->hide = 1;
			break;
		case Opt_unhide:
		case Opt_showassoc:
			popt->showassoc = 1;
			break;
		case Opt_cruft:
			popt->cruft = 1;
			break;
		case Opt_utf8:
			popt->utf8 = 1;
			break;
#ifdef CONFIG_JOLIET
		case Opt_iocharset:
			kfree(popt->iocharset);
			popt->iocharset = match_strdup(&args[0]);
			if (!popt->iocharset)
				return 0;
			break;
#endif
		case Opt_map_a:
			popt->map = 'a';
			break;
		case Opt_map_o:
			popt->map = 'o';
			break;
		case Opt_map_n:
			popt->map = 'n';
			break;
		case Opt_session:
			if (FUNC5(&args[0], &option))
				return 0;
			n = option;
			/*
			 * Track numbers are supposed to be in range 1-99, the
			 * mount option starts indexing at 0.
			 */
			if (n >= 99)
				return 0;
			popt->session = n + 1;
			break;
		case Opt_sb:
			if (FUNC5(&args[0], &option))
				return 0;
			popt->sbsector = option;
			break;
		case Opt_check_r:
			popt->check = 'r';
			break;
		case Opt_check_s:
			popt->check = 's';
			break;
		case Opt_ignore:
			break;
		case Opt_uid:
			if (FUNC5(&args[0], &option))
				return 0;
			popt->uid = FUNC4(FUNC0(), option);
			if (!FUNC9(popt->uid))
				return 0;
			popt->uid_set = 1;
			break;
		case Opt_gid:
			if (FUNC5(&args[0], &option))
				return 0;
			popt->gid = FUNC3(FUNC0(), option);
			if (!FUNC1(popt->gid))
				return 0;
			popt->gid_set = 1;
			break;
		case Opt_mode:
			if (FUNC5(&args[0], &option))
				return 0;
			popt->fmode = option;
			break;
		case Opt_dmode:
			if (FUNC5(&args[0], &option))
				return 0;
			popt->dmode = option;
			break;
		case Opt_overriderockperm:
			popt->overriderockperm = 1;
			break;
		case Opt_block:
			if (FUNC5(&args[0], &option))
				return 0;
			n = option;
			if (n != 512 && n != 1024 && n != 2048)
				return 0;
			popt->blocksize = n;
			break;
		case Opt_nocompress:
			popt->nocompress = 1;
			break;
		default:
			return 0;
		}
	}
	return 1;
}