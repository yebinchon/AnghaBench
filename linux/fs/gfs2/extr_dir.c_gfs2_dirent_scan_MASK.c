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
struct gfs2_dirent {int /*<<< orphan*/  de_rec_len; } ;
typedef  int (* gfs2_dscan_t ) (struct gfs2_dirent*,struct qstr const*,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 struct gfs2_dirent* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct gfs2_dirent*,unsigned int,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static struct gfs2_dirent *FUNC8(struct inode *inode, void *buf,
					    unsigned int len, gfs2_dscan_t scan,
					    const struct qstr *name,
					    void *opaque)
{
	struct gfs2_dirent *dent, *prev;
	unsigned offset;
	unsigned size;
	int ret = 0;

	ret = FUNC7(FUNC3(inode), buf);
	if (ret < 0)
		goto consist_inode;

	offset = ret;
	prev = NULL;
	dent = buf + offset;
	size = FUNC4(dent->de_rec_len);
	if (FUNC5(FUNC3(inode), dent, offset, size, len, 1))
		goto consist_inode;
	do {
		ret = scan(dent, name, opaque);
		if (ret)
			break;
		offset += size;
		if (offset == len)
			break;
		prev = dent;
		dent = buf + offset;
		size = FUNC4(dent->de_rec_len);
		if (FUNC5(FUNC3(inode), dent, offset, size,
				      len, 0))
			goto consist_inode;
	} while(1);

	switch(ret) {
	case 0:
		return NULL;
	case 1:
		return dent;
	case 2:
		return prev ? prev : dent;
	default:
		FUNC0(ret > 0);
		return FUNC1(ret);
	}

consist_inode:
	FUNC6(FUNC2(inode));
	return FUNC1(-EIO);
}