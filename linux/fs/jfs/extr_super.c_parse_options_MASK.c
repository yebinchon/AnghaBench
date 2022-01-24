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
typedef  int uid_t ;
struct TYPE_4__ {char* from; } ;
typedef  TYPE_1__ substring_t ;
struct super_block {scalar_t__ s_blocksize_bits; TYPE_3__* s_bdev; } ;
struct request_queue {int dummy; } ;
struct jfs_sb_info {int umask; int minblks_trim; void* nls_tab; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
typedef  scalar_t__ s64 ;
typedef  int gid_t ;
struct TYPE_5__ {int /*<<< orphan*/  bd_inode; } ;

/* Variables and functions */
 int JFS_DISCARD ; 
 int JFS_ERR_CONTINUE ; 
 int JFS_ERR_PANIC ; 
 int JFS_ERR_REMOUNT_RO ; 
 int JFS_GRPQUOTA ; 
 int JFS_NOINTEGRITY ; 
 struct jfs_sb_info* FUNC0 (struct super_block*) ; 
 int JFS_USRQUOTA ; 
 int MAX_OPT_ARGS ; 
#define  Opt_discard 143 
#define  Opt_discard_minblk 142 
#define  Opt_errors 141 
#define  Opt_gid 140 
#define  Opt_grpquota 139 
#define  Opt_ignore 138 
#define  Opt_integrity 137 
#define  Opt_iocharset 136 
#define  Opt_nodiscard 135 
#define  Opt_nointegrity 134 
#define  Opt_quota 133 
#define  Opt_resize 132 
#define  Opt_resize_nosize 131 
#define  Opt_uid 130 
#define  Opt_umask 129 
#define  Opt_usrquota 128 
 struct request_queue* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC7 (char*,int,int*) ; 
 void* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 char* FUNC15 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 

__attribute__((used)) static int FUNC18(char *options, struct super_block *sb, s64 *newLVSize,
			 int *flag)
{
	void *nls_map = (void *)-1;	/* -1: no change;  NULL: none */
	char *p;
	struct jfs_sb_info *sbi = FUNC0(sb);

	*newLVSize = 0;

	if (!options)
		return 1;

	while ((p = FUNC15(&options, ",")) != NULL) {
		substring_t args[MAX_OPT_ARGS];
		int token;
		if (!*p)
			continue;

		token = FUNC11(p, tokens, args);
		switch (token) {
		case Opt_integrity:
			*flag &= ~JFS_NOINTEGRITY;
			break;
		case Opt_nointegrity:
			*flag |= JFS_NOINTEGRITY;
			break;
		case Opt_ignore:
			/* Silently ignore the quota options */
			/* Don't do anything ;-) */
			break;
		case Opt_iocharset:
			if (nls_map && nls_map != (void *) -1)
				FUNC17(nls_map);
			if (!FUNC14(args[0].from, "none"))
				nls_map = NULL;
			else {
				nls_map = FUNC8(args[0].from);
				if (!nls_map) {
					FUNC12("JFS: charset not found\n");
					goto cleanup;
				}
			}
			break;
		case Opt_resize:
		{
			char *resize = args[0].from;
			int rc = FUNC6(resize, 0, newLVSize);

			if (rc)
				goto cleanup;
			break;
		}
		case Opt_resize_nosize:
		{
			*newLVSize = FUNC5(sb->s_bdev->bd_inode) >>
				sb->s_blocksize_bits;
			if (*newLVSize == 0)
				FUNC12("JFS: Cannot determine volume size\n");
			break;
		}
		case Opt_errors:
		{
			char *errors = args[0].from;
			if (!errors || !*errors)
				goto cleanup;
			if (!FUNC14(errors, "continue")) {
				*flag &= ~JFS_ERR_REMOUNT_RO;
				*flag &= ~JFS_ERR_PANIC;
				*flag |= JFS_ERR_CONTINUE;
			} else if (!FUNC14(errors, "remount-ro")) {
				*flag &= ~JFS_ERR_CONTINUE;
				*flag &= ~JFS_ERR_PANIC;
				*flag |= JFS_ERR_REMOUNT_RO;
			} else if (!FUNC14(errors, "panic")) {
				*flag &= ~JFS_ERR_CONTINUE;
				*flag &= ~JFS_ERR_REMOUNT_RO;
				*flag |= JFS_ERR_PANIC;
			} else {
				FUNC12("JFS: %s is an invalid error handler\n",
				       errors);
				goto cleanup;
			}
			break;
		}

#ifdef CONFIG_QUOTA
		case Opt_quota:
		case Opt_usrquota:
			*flag |= JFS_USRQUOTA;
			break;
		case Opt_grpquota:
			*flag |= JFS_GRPQUOTA;
			break;
#else
		case Opt_usrquota:
		case Opt_grpquota:
		case Opt_quota:
			FUNC12("JFS: quota operations not supported\n");
			break;
#endif
		case Opt_uid:
		{
			char *uid = args[0].from;
			uid_t val;
			int rc = FUNC7(uid, 0, &val);

			if (rc)
				goto cleanup;
			sbi->uid = FUNC10(FUNC3(), val);
			if (!FUNC16(sbi->uid))
				goto cleanup;
			break;
		}

		case Opt_gid:
		{
			char *gid = args[0].from;
			gid_t val;
			int rc = FUNC7(gid, 0, &val);

			if (rc)
				goto cleanup;
			sbi->gid = FUNC9(FUNC3(), val);
			if (!FUNC4(sbi->gid))
				goto cleanup;
			break;
		}

		case Opt_umask:
		{
			char *umask = args[0].from;
			int rc = FUNC7(umask, 8, &sbi->umask);

			if (rc)
				goto cleanup;
			if (sbi->umask & ~0777) {
				FUNC12("JFS: Invalid value of umask\n");
				goto cleanup;
			}
			break;
		}

		case Opt_discard:
		{
			struct request_queue *q = FUNC1(sb->s_bdev);
			/* if set to 1, even copying files will cause
			 * trimming :O
			 * -> user has more control over the online trimming
			 */
			sbi->minblks_trim = 64;
			if (FUNC2(q))
				*flag |= JFS_DISCARD;
			else
				FUNC12("JFS: discard option not supported on device\n");
			break;
		}

		case Opt_nodiscard:
			*flag &= ~JFS_DISCARD;
			break;

		case Opt_discard_minblk:
		{
			struct request_queue *q = FUNC1(sb->s_bdev);
			char *minblks_trim = args[0].from;
			int rc;
			if (FUNC2(q)) {
				*flag |= JFS_DISCARD;
				rc = FUNC7(minblks_trim, 0,
						&sbi->minblks_trim);
				if (rc)
					goto cleanup;
			} else
				FUNC12("JFS: discard option not supported on device\n");
			break;
		}

		default:
			FUNC13("jfs: Unrecognized mount option \"%s\" or missing value\n",
			       p);
			goto cleanup;
		}
	}

	if (nls_map != (void *) -1) {
		/* Discard old (if remount) */
		FUNC17(sbi->nls_tab);
		sbi->nls_tab = nls_map;
	}
	return 1;

cleanup:
	if (nls_map && nls_map != (void *) -1)
		FUNC17(nls_map);
	return 0;
}