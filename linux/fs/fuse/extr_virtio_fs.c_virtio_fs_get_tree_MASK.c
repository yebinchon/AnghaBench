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
struct virtio_fs {int dummy; } ;
struct super_block {int /*<<< orphan*/  s_root; int /*<<< orphan*/  s_flags; } ;
struct fuse_conn {int delete_stale; int /*<<< orphan*/  release; } ;
struct fs_context {int /*<<< orphan*/  root; struct fuse_conn* s_fs_info; int /*<<< orphan*/  source; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct super_block*) ; 
 int FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  SB_ACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fuse_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct virtio_fs*) ; 
 int /*<<< orphan*/  FUNC7 (struct fuse_conn*) ; 
 int /*<<< orphan*/  fuse_free_conn ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct fuse_conn* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 struct super_block* FUNC13 (struct fs_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct super_block*) ; 
 struct virtio_fs* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  virtio_fs_fiq_ops ; 
 int /*<<< orphan*/  virtio_fs_mutex ; 
 int /*<<< orphan*/  FUNC16 (struct virtio_fs*) ; 
 int /*<<< orphan*/  virtio_fs_set_super ; 
 int /*<<< orphan*/  virtio_fs_test_super ; 

__attribute__((used)) static int FUNC17(struct fs_context *fsc)
{
	struct virtio_fs *fs;
	struct super_block *sb;
	struct fuse_conn *fc;
	int err;

	/* This gets a reference on virtio_fs object. This ptr gets installed
	 * in fc->iq->priv. Once fuse_conn is going away, it calls ->put()
	 * to drop the reference to this object.
	 */
	fs = FUNC15(fsc->source);
	if (!fs) {
		FUNC12("virtio-fs: tag <%s> not found\n", fsc->source);
		return -EINVAL;
	}

	fc = FUNC9(sizeof(struct fuse_conn), GFP_KERNEL);
	if (!fc) {
		FUNC10(&virtio_fs_mutex);
		FUNC16(fs);
		FUNC11(&virtio_fs_mutex);
		return -ENOMEM;
	}

	FUNC6(fc, FUNC8(FUNC3()), &virtio_fs_fiq_ops,
		       fs);
	fc->release = fuse_free_conn;
	fc->delete_stale = true;

	fsc->s_fs_info = fc;
	sb = FUNC13(fsc, virtio_fs_test_super, virtio_fs_set_super);
	FUNC7(fc);
	if (FUNC0(sb))
		return FUNC1(sb);

	if (!sb->s_root) {
		err = FUNC14(sb);
		if (err) {
			FUNC4(sb);
			return err;
		}

		sb->s_flags |= SB_ACTIVE;
	}

	FUNC2(fsc->root);
	fsc->root = FUNC5(sb->s_root);
	return 0;
}