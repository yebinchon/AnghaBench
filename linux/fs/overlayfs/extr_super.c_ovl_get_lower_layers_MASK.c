#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int mnt_flags; } ;
struct super_block {int dummy; } ;
struct path {int /*<<< orphan*/  dentry; } ;
struct ovl_sb {int dummy; } ;
struct ovl_layer {int dummy; } ;
struct TYPE_4__ {scalar_t__ xino; } ;
struct ovl_fs {size_t numlower; int numlowerfs; int xino_bits; TYPE_2__ config; int /*<<< orphan*/  upper_mnt; int /*<<< orphan*/ * lower_fs; TYPE_1__* lower_layers; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {unsigned int idx; int fsid; int /*<<< orphan*/ * fs; struct vfsmount* mnt; struct inode* trap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct vfsmount*) ; 
 int MNT_NOATIME ; 
 int MNT_READONLY ; 
 int OVL_MAX_STACK ; 
 scalar_t__ OVL_XINO_OFF ; 
 scalar_t__ OVL_XINO_ON ; 
 int FUNC2 (struct vfsmount*) ; 
 struct vfsmount* FUNC3 (struct path*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 void* FUNC6 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ovl_fs*,struct path*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ovl_fs*,char*) ; 
 int FUNC10 (struct super_block*,int /*<<< orphan*/ ,struct inode**,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 

__attribute__((used)) static int FUNC13(struct super_block *sb, struct ovl_fs *ofs,
				struct path *stack, unsigned int numlower)
{
	int err;
	unsigned int i;

	err = -ENOMEM;
	ofs->lower_layers = FUNC6(numlower, sizeof(struct ovl_layer),
				    GFP_KERNEL);
	if (ofs->lower_layers == NULL)
		goto out;

	ofs->lower_fs = FUNC6(numlower, sizeof(struct ovl_sb),
				GFP_KERNEL);
	if (ofs->lower_fs == NULL)
		goto out;

	for (i = 0; i < numlower; i++) {
		struct vfsmount *mnt;
		struct inode *trap;
		int fsid;

		err = fsid = FUNC7(ofs, &stack[i]);
		if (err < 0)
			goto out;

		err = FUNC10(sb, stack[i].dentry, &trap, "lowerdir");
		if (err)
			goto out;

		if (FUNC8(stack[i].dentry)) {
			err = FUNC9(ofs, "lowerdir");
			if (err)
				goto out;
		}

		mnt = FUNC3(&stack[i]);
		err = FUNC2(mnt);
		if (FUNC1(mnt)) {
			FUNC11("overlayfs: failed to clone lowerpath\n");
			FUNC5(trap);
			goto out;
		}

		/*
		 * Make lower layers R/O.  That way fchmod/fchown on lower file
		 * will fail instead of modifying lower fs.
		 */
		mnt->mnt_flags |= MNT_READONLY | MNT_NOATIME;

		ofs->lower_layers[ofs->numlower].trap = trap;
		ofs->lower_layers[ofs->numlower].mnt = mnt;
		ofs->lower_layers[ofs->numlower].idx = i + 1;
		ofs->lower_layers[ofs->numlower].fsid = fsid;
		if (fsid) {
			ofs->lower_layers[ofs->numlower].fs =
				&ofs->lower_fs[fsid - 1];
		}
		ofs->numlower++;
	}

	/*
	 * When all layers on same fs, overlay can use real inode numbers.
	 * With mount option "xino=on", mounter declares that there are enough
	 * free high bits in underlying fs to hold the unique fsid.
	 * If overlayfs does encounter underlying inodes using the high xino
	 * bits reserved for fsid, it emits a warning and uses the original
	 * inode number.
	 */
	if (!ofs->numlowerfs || (ofs->numlowerfs == 1 && !ofs->upper_mnt)) {
		ofs->xino_bits = 0;
		ofs->config.xino = OVL_XINO_OFF;
	} else if (ofs->config.xino == OVL_XINO_ON && !ofs->xino_bits) {
		/*
		 * This is a roundup of number of bits needed for numlowerfs+1
		 * (i.e. ilog2(numlowerfs+1 - 1) + 1). fsid 0 is reserved for
		 * upper fs even with non upper overlay.
		 */
		FUNC0(FUNC4(OVL_MAX_STACK) > 31);
		ofs->xino_bits = FUNC4(ofs->numlowerfs) + 1;
	}

	if (ofs->xino_bits) {
		FUNC12("overlayfs: \"xino\" feature enabled using %d upper inode bits.\n",
			ofs->xino_bits);
	}

	err = 0;
out:
	return err;
}