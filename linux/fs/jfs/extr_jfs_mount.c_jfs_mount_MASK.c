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
struct super_block {int dummy; } ;
struct jfs_sb_info {int mntflag; struct inode* ipimap; struct inode* ipaimap2; struct inode* ipbmap; struct inode* ipaimap; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGGREGATE_I ; 
 int /*<<< orphan*/  BMAP_I ; 
 int EIO ; 
 int /*<<< orphan*/  FILESYSTEM_I ; 
 int JFS_BAD_SAIT ; 
 struct jfs_sb_info* FUNC0 (struct super_block*) ; 
 int FUNC1 (struct super_block*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*) ; 
 struct inode* FUNC6 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct inode*) ; 

int FUNC10(struct super_block *sb)
{
	int rc = 0;		/* Return code */
	struct jfs_sb_info *sbi = FUNC0(sb);
	struct inode *ipaimap = NULL;
	struct inode *ipaimap2 = NULL;
	struct inode *ipimap = NULL;
	struct inode *ipbmap = NULL;

	/*
	 * read/validate superblock
	 * (initialize mount inode from the superblock)
	 */
	if ((rc = FUNC1(sb))) {
		goto errout20;
	}

	ipaimap = FUNC6(sb, AGGREGATE_I, 0);
	if (ipaimap == NULL) {
		FUNC8("jfs_mount: Failed to read AGGREGATE_I");
		rc = -EIO;
		goto errout20;
	}
	sbi->ipaimap = ipaimap;

	FUNC9("jfs_mount: ipaimap:0x%p", ipaimap);

	/*
	 * initialize aggregate inode allocation map
	 */
	if ((rc = FUNC5(ipaimap))) {
		FUNC8("jfs_mount: diMount(ipaimap) failed w/rc = %d", rc);
		goto errout21;
	}

	/*
	 * open aggregate block allocation map
	 */
	ipbmap = FUNC6(sb, BMAP_I, 0);
	if (ipbmap == NULL) {
		rc = -EIO;
		goto errout22;
	}

	FUNC9("jfs_mount: ipbmap:0x%p", ipbmap);

	sbi->ipbmap = ipbmap;

	/*
	 * initialize aggregate block allocation map
	 */
	if ((rc = FUNC2(ipbmap))) {
		FUNC8("jfs_mount: dbMount failed w/rc = %d", rc);
		goto errout22;
	}

	/*
	 * open the secondary aggregate inode allocation map
	 *
	 * This is a duplicate of the aggregate inode allocation map.
	 *
	 * hand craft a vfs in the same fashion as we did to read ipaimap.
	 * By adding INOSPEREXT (32) to the inode number, we are telling
	 * diReadSpecial that we are reading from the secondary aggregate
	 * inode table.  This also creates a unique entry in the inode hash
	 * table.
	 */
	if ((sbi->mntflag & JFS_BAD_SAIT) == 0) {
		ipaimap2 = FUNC6(sb, AGGREGATE_I, 1);
		if (!ipaimap2) {
			FUNC8("jfs_mount: Failed to read AGGREGATE_I");
			rc = -EIO;
			goto errout35;
		}
		sbi->ipaimap2 = ipaimap2;

		FUNC9("jfs_mount: ipaimap2:0x%p", ipaimap2);

		/*
		 * initialize secondary aggregate inode allocation map
		 */
		if ((rc = FUNC5(ipaimap2))) {
			FUNC8("jfs_mount: diMount(ipaimap2) failed, rc = %d",
				rc);
			goto errout35;
		}
	} else
		/* Secondary aggregate inode table is not valid */
		sbi->ipaimap2 = NULL;

	/*
	 *	mount (the only/single) fileset
	 */
	/*
	 * open fileset inode allocation map (aka fileset inode)
	 */
	ipimap = FUNC6(sb, FILESYSTEM_I, 0);
	if (ipimap == NULL) {
		FUNC8("jfs_mount: Failed to read FILESYSTEM_I");
		/* open fileset secondary inode allocation map */
		rc = -EIO;
		goto errout40;
	}
	FUNC9("jfs_mount: ipimap:0x%p", ipimap);

	/* map further access of per fileset inodes by the fileset inode */
	sbi->ipimap = ipimap;

	/* initialize fileset inode allocation map */
	if ((rc = FUNC5(ipimap))) {
		FUNC8("jfs_mount: diMount failed w/rc = %d", rc);
		goto errout41;
	}

	goto out;

	/*
	 *	unwind on error
	 */
      errout41:		/* close fileset inode allocation map inode */
	FUNC4(ipimap);

      errout40:		/* fileset closed */

	/* close secondary aggregate inode allocation map */
	if (ipaimap2) {
		FUNC7(ipaimap2, 1);
		FUNC4(ipaimap2);
	}

      errout35:

	/* close aggregate block allocation map */
	FUNC3(ipbmap, 1);
	FUNC4(ipbmap);

      errout22:		/* close aggregate inode allocation map */

	FUNC7(ipaimap, 1);

      errout21:		/* close aggregate inodes */
	FUNC4(ipaimap);
      errout20:		/* aggregate closed */

      out:

	if (rc)
		FUNC8("Mount JFS Failure: %d", rc);

	return rc;
}