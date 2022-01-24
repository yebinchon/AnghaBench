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
struct qstr {unsigned int len; } ;
struct inode {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_dirent {int /*<<< orphan*/  de_rec_len; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct qstr const*,unsigned int,struct gfs2_dirent*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct buffer_head*) ; 

__attribute__((used)) static struct gfs2_dirent *FUNC6(struct inode *inode,
					  struct gfs2_dirent *dent,
					  const struct qstr *name,
					  struct buffer_head *bh,
					  unsigned offset)
{
	struct gfs2_inode *ip = FUNC1(inode);
	struct gfs2_dirent *ndent;
	unsigned totlen;

	totlen = FUNC2(dent->de_rec_len);
	FUNC0(offset + name->len > totlen);
	FUNC5(ip->i_gl, bh);
	ndent = (struct gfs2_dirent *)((char *)dent + offset);
	dent->de_rec_len = FUNC3(offset);
	FUNC4(name, totlen - offset, ndent);
	return ndent;
}