#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct h_misc   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  const u8 ;
struct shash_desc {int dummy; } ;
struct inode {unsigned long i_ino; TYPE_1__* i_sb; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_generation; } ;
typedef  int /*<<< orphan*/  hmac_misc ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/  __u32 ;
struct h_misc {unsigned long ino; int /*<<< orphan*/  generation; int /*<<< orphan*/  uid; int /*<<< orphan*/  gid; int /*<<< orphan*/  mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_uuid; } ;

/* Variables and functions */
 int EVM_ATTR_FSUUID ; 
 char EVM_XATTR_PORTABLE_DIGSIG ; 
 int UUID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct shash_desc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct shash_desc*,int /*<<< orphan*/  const*,int) ; 
 int evm_hmac_attrs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct shash_desc *desc, struct inode *inode,
			  char type, char *digest)
{
	struct h_misc {
		unsigned long ino;
		__u32 generation;
		uid_t uid;
		gid_t gid;
		umode_t mode;
	} hmac_misc;

	FUNC4(&hmac_misc, 0, sizeof(hmac_misc));
	/* Don't include the inode or generation number in portable
	 * signatures
	 */
	if (type != EVM_XATTR_PORTABLE_DIGSIG) {
		hmac_misc.ino = inode->i_ino;
		hmac_misc.generation = inode->i_generation;
	}
	/* The hmac uid and gid must be encoded in the initial user
	 * namespace (not the filesystems user namespace) as encoding
	 * them in the filesystems user namespace allows an attack
	 * where first they are written in an unprivileged fuse mount
	 * of a filesystem and then the system is tricked to mount the
	 * filesystem for real on next boot and trust it because
	 * everything is signed.
	 */
	hmac_misc.uid = FUNC3(&init_user_ns, inode->i_uid);
	hmac_misc.gid = FUNC2(&init_user_ns, inode->i_gid);
	hmac_misc.mode = inode->i_mode;
	FUNC1(desc, (const u8 *)&hmac_misc, sizeof(hmac_misc));
	if ((evm_hmac_attrs & EVM_ATTR_FSUUID) &&
	    type != EVM_XATTR_PORTABLE_DIGSIG)
		FUNC1(desc, (u8 *)&inode->i_sb->s_uuid, UUID_SIZE);
	FUNC0(desc, digest);
}