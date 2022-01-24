#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_super {int dummy; } ;
struct ocfs2_dir_lookup_result {int /*<<< orphan*/ * member_0; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 char* OCFS2_DIO_ORPHAN_PREFIX ; 
 int OCFS2_DIO_ORPHAN_PREFIX_LEN ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  OCFS2_ORPHAN_NAMELEN ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_dinode*,int) ; 
 int FUNC5 (scalar_t__,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*,struct ocfs2_dir_lookup_result*) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,struct inode*,struct ocfs2_dir_lookup_result*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_dir_lookup_result*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC13 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned long long,char*,int /*<<< orphan*/ ) ; 

int FUNC16(struct ocfs2_super *osb,
		     handle_t *handle,
		     struct inode *orphan_dir_inode,
		     struct inode *inode,
		     struct buffer_head *orphan_dir_bh,
		     bool dio)
{
	char name[OCFS2_DIO_ORPHAN_PREFIX_LEN + OCFS2_ORPHAN_NAMELEN + 1];
	struct ocfs2_dinode *orphan_fe;
	int status = 0;
	struct ocfs2_dir_lookup_result lookup = { NULL, };

	if (dio) {
		status = FUNC13(name, OCFS2_DIO_ORPHAN_PREFIX_LEN + 1, "%s",
				OCFS2_DIO_ORPHAN_PREFIX);
		if (status != OCFS2_DIO_ORPHAN_PREFIX_LEN) {
			status = -EINVAL;
			FUNC3(status);
			return status;
		}

		status = FUNC5(FUNC1(inode)->ip_blkno,
				name + OCFS2_DIO_ORPHAN_PREFIX_LEN);
	} else
		status = FUNC5(FUNC1(inode)->ip_blkno, name);
	if (status < 0) {
		FUNC3(status);
		goto leave;
	}

	FUNC15(
	     (unsigned long long)FUNC1(orphan_dir_inode)->ip_blkno,
	     name, FUNC14(name));

	status = FUNC9(handle,
					 FUNC0(orphan_dir_inode),
					 orphan_dir_bh,
					 OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC3(status);
		goto leave;
	}

	/* find it's spot in the orphan directory */
	status = FUNC7(name, FUNC14(name), orphan_dir_inode,
				  &lookup);
	if (status) {
		FUNC3(status);
		goto leave;
	}

	/* remove it from the orphan directory */
	status = FUNC6(handle, orphan_dir_inode, &lookup);
	if (status < 0) {
		FUNC3(status);
		goto leave;
	}

	/* do the i_nlink dance! :) */
	orphan_fe = (struct ocfs2_dinode *) orphan_dir_bh->b_data;
	if (FUNC2(inode->i_mode))
		FUNC4(orphan_fe, -1);
	FUNC12(orphan_dir_inode, FUNC11(orphan_fe));
	FUNC10(handle, orphan_dir_bh);

leave:
	FUNC8(&lookup);

	if (status)
		FUNC3(status);
	return status;
}