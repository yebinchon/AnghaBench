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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct fd {int /*<<< orphan*/  file; } ;
struct cred {int dummy; } ;
typedef  scalar_t__ loff_t ;
typedef  enum ovl_copyop { ____Placeholder_ovl_copyop } ovl_copyop ;

/* Variables and functions */
#define  OVL_CLONE 130 
#define  OVL_COPY 129 
#define  OVL_DEDUPE 128 
 int /*<<< orphan*/  FUNC0 (struct fd) ; 
 struct inode* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct cred* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct file*,struct fd*) ; 
 int /*<<< orphan*/  FUNC6 (struct cred const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,unsigned int) ; 

__attribute__((used)) static loff_t FUNC10(struct file *file_in, loff_t pos_in,
			    struct file *file_out, loff_t pos_out,
			    loff_t len, unsigned int flags, enum ovl_copyop op)
{
	struct inode *inode_out = FUNC1(file_out);
	struct fd real_in, real_out;
	const struct cred *old_cred;
	loff_t ret;

	ret = FUNC5(file_out, &real_out);
	if (ret)
		return ret;

	ret = FUNC5(file_in, &real_in);
	if (ret) {
		FUNC0(real_out);
		return ret;
	}

	old_cred = FUNC4(FUNC1(file_out)->i_sb);
	switch (op) {
	case OVL_COPY:
		ret = FUNC8(real_in.file, pos_in,
					  real_out.file, pos_out, len, flags);
		break;

	case OVL_CLONE:
		ret = FUNC7(real_in.file, pos_in,
					   real_out.file, pos_out, len, flags);
		break;

	case OVL_DEDUPE:
		ret = FUNC9(real_in.file, pos_in,
						real_out.file, pos_out, len,
						flags);
		break;
	}
	FUNC6(old_cred);

	/* Update size */
	FUNC2(FUNC3(inode_out), inode_out);

	FUNC0(real_in);
	FUNC0(real_out);

	return ret;
}