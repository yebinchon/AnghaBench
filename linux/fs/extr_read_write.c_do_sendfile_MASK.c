#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_1__* i_sb; } ;
struct fd {TYPE_2__* file; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_11__ {int f_mode; scalar_t__ f_pos; int f_flags; } ;
struct TYPE_10__ {int /*<<< orphan*/  s_maxbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  EOVERFLOW ; 
 int /*<<< orphan*/  ESPIPE ; 
 int FMODE_PREAD ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 size_t MAX_RW_COUNT ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  READ ; 
 int SPLICE_F_NONBLOCK ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__*,TYPE_2__*,scalar_t__*,size_t,int) ; 
 struct fd FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct fd) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 struct inode* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__*,size_t) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static ssize_t FUNC15(int out_fd, int in_fd, loff_t *ppos,
		  	   size_t count, loff_t max)
{
	struct fd in, out;
	struct inode *in_inode, *out_inode;
	loff_t pos;
	loff_t out_pos;
	ssize_t retval;
	int fl;

	/*
	 * Get input file, and verify that it is ok..
	 */
	retval = -EBADF;
	in = FUNC3(in_fd);
	if (!in.file)
		goto out;
	if (!(in.file->f_mode & FMODE_READ))
		goto fput_in;
	retval = -ESPIPE;
	if (!ppos) {
		pos = in.file->f_pos;
	} else {
		pos = *ppos;
		if (!(in.file->f_mode & FMODE_PREAD))
			goto fput_in;
	}
	retval = FUNC13(READ, in.file, &pos, count);
	if (retval < 0)
		goto fput_in;
	if (count > MAX_RW_COUNT)
		count =  MAX_RW_COUNT;

	/*
	 * Get output file, and verify that it is ok..
	 */
	retval = -EBADF;
	out = FUNC3(out_fd);
	if (!out.file)
		goto fput_in;
	if (!(out.file->f_mode & FMODE_WRITE))
		goto fput_out;
	in_inode = FUNC6(in.file);
	out_inode = FUNC6(out.file);
	out_pos = out.file->f_pos;
	retval = FUNC13(WRITE, out.file, &out_pos, count);
	if (retval < 0)
		goto fput_out;

	if (!max)
		max = FUNC12(in_inode->i_sb->s_maxbytes, out_inode->i_sb->s_maxbytes);

	if (FUNC14(pos + count > max)) {
		retval = -EOVERFLOW;
		if (pos >= max)
			goto fput_out;
		count = max - pos;
	}

	fl = 0;
#if 0
	/*
	 * We need to debate whether we can enable this or not. The
	 * man page documents EAGAIN return for the output at least,
	 * and the application is arguably buggy if it doesn't expect
	 * EAGAIN on a non-blocking file descriptor.
	 */
	if (in.file->f_flags & O_NONBLOCK)
		fl = SPLICE_F_NONBLOCK;
#endif
	FUNC7(out.file);
	retval = FUNC2(in.file, &pos, out.file, &out_pos, count, fl);
	FUNC5(out.file);

	if (retval > 0) {
		FUNC0(current, retval);
		FUNC1(current, retval);
		FUNC8(in.file);
		FUNC9(out.file);
		out.file->f_pos = out_pos;
		if (ppos)
			*ppos = pos;
		else
			in.file->f_pos = pos;
	}

	FUNC10(current);
	FUNC11(current);
	if (pos > max)
		retval = -EOVERFLOW;

fput_out:
	FUNC4(out);
fput_in:
	FUNC4(in);
out:
	return retval;
}