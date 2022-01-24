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
struct qstr {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_dirent {int /*<<< orphan*/  de_name_len; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct gfs2_dirent* FUNC2 (struct inode*,struct gfs2_dirent*,struct qstr const*,struct buffer_head*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_dirent*) ; 

__attribute__((used)) static struct gfs2_dirent *FUNC4(struct inode *inode,
					    struct gfs2_dirent *dent,
					    const struct qstr *name,
					    struct buffer_head *bh)
{
	unsigned offset = 0;

	if (!FUNC3(dent))
		offset = FUNC0(FUNC1(dent->de_name_len));
	return FUNC2(inode, dent, name, bh, offset);
}