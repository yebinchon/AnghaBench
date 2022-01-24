#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct TYPE_10__ {int vol_flags; int major_ver; int /*<<< orphan*/  logfile_ino; } ;
typedef  TYPE_1__ ntfs_volume ;

/* Variables and functions */
 int EINVAL ; 
 int EROFS ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int SB_RDONLY ; 
 int VOLUME_IS_DIRTY ; 
 int VOLUME_MODIFIED_BY_CHKDSK ; 
 int VOLUME_MOUNTED_ON_NT4 ; 
 int VOLUME_MUST_MOUNT_RO_MASK ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC13 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*) ; 

__attribute__((used)) static int FUNC15(struct super_block *sb, int *flags, char *opt)
{
	ntfs_volume *vol = FUNC0(sb);

	FUNC5("Entering with remount options string: %s", opt);

	FUNC14(sb);

#ifndef NTFS_RW
	/* For read-only compiled driver, enforce read-only flag. */
	*flags |= SB_RDONLY;
#else /* NTFS_RW */
	/*
	 * For the read-write compiled driver, if we are remounting read-write,
	 * make sure there are no volume errors and that no unsupported volume
	 * flags are set.  Also, empty the logfile journal as it would become
	 * stale as soon as something is written to the volume and mark the
	 * volume dirty so that chkdsk is run if the volume is not umounted
	 * cleanly.  Finally, mark the quotas out of date so Windows rescans
	 * the volume on boot and updates them.
	 *
	 * When remounting read-only, mark the volume clean if no volume errors
	 * have occurred.
	 */
	if (sb_rdonly(sb) && !(*flags & SB_RDONLY)) {
		static const char *es = ".  Cannot remount read-write.";

		/* Remounting read-write. */
		if (NVolErrors(vol)) {
			ntfs_error(sb, "Volume has errors and is read-only%s",
					es);
			return -EROFS;
		}
		if (vol->vol_flags & VOLUME_IS_DIRTY) {
			ntfs_error(sb, "Volume is dirty and read-only%s", es);
			return -EROFS;
		}
		if (vol->vol_flags & VOLUME_MODIFIED_BY_CHKDSK) {
			ntfs_error(sb, "Volume has been modified by chkdsk "
					"and is read-only%s", es);
			return -EROFS;
		}
		if (vol->vol_flags & VOLUME_MUST_MOUNT_RO_MASK) {
			ntfs_error(sb, "Volume has unsupported flags set "
					"(0x%x) and is read-only%s",
					(unsigned)le16_to_cpu(vol->vol_flags),
					es);
			return -EROFS;
		}
		if (ntfs_set_volume_flags(vol, VOLUME_IS_DIRTY)) {
			ntfs_error(sb, "Failed to set dirty bit in volume "
					"information flags%s", es);
			return -EROFS;
		}
#if 0
		// TODO: Enable this code once we start modifying anything that
		//	 is different between NTFS 1.2 and 3.x...
		/* Set NT4 compatibility flag on newer NTFS version volumes. */
		if ((vol->major_ver > 1)) {
			if (ntfs_set_volume_flags(vol, VOLUME_MOUNTED_ON_NT4)) {
				ntfs_error(sb, "Failed to set NT4 "
						"compatibility flag%s", es);
				NVolSetErrors(vol);
				return -EROFS;
			}
		}
#endif
		if (!ntfs_empty_logfile(vol->logfile_ino)) {
			ntfs_error(sb, "Failed to empty journal $LogFile%s",
					es);
			NVolSetErrors(vol);
			return -EROFS;
		}
		if (!ntfs_mark_quotas_out_of_date(vol)) {
			ntfs_error(sb, "Failed to mark quotas out of date%s",
					es);
			NVolSetErrors(vol);
			return -EROFS;
		}
		if (!ntfs_stamp_usnjrnl(vol)) {
			ntfs_error(sb, "Failed to stamp transaction log "
					"($UsnJrnl)%s", es);
			NVolSetErrors(vol);
			return -EROFS;
		}
	} else if (!sb_rdonly(sb) && (*flags & SB_RDONLY)) {
		/* Remounting read-only. */
		if (!NVolErrors(vol)) {
			if (ntfs_clear_volume_flags(vol, VOLUME_IS_DIRTY))
				ntfs_warning(sb, "Failed to clear dirty bit "
						"in volume information "
						"flags.  Run chkdsk.");
		}
	}
#endif /* NTFS_RW */

	// TODO: Deal with *flags.

	if (!FUNC12(vol, opt))
		return -EINVAL;

	FUNC5("Done.");
	return 0;
}