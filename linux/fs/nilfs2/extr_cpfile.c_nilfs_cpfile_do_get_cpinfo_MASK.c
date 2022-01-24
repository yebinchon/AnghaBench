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
struct nilfs_cpinfo {scalar_t__ ci_cno; } ;
struct nilfs_checkpoint {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  int ssize_t ;
typedef  scalar_t__ __u64 ;
struct TYPE_2__ {size_t mi_entry_size; int /*<<< orphan*/  mi_sem; } ;

/* Variables and functions */
 int ENOENT ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct nilfs_checkpoint*) ; 
 struct nilfs_checkpoint* FUNC7 (struct inode*,scalar_t__,struct buffer_head*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct nilfs_checkpoint*,struct nilfs_cpinfo*) ; 
 int FUNC9 (struct inode*,scalar_t__,scalar_t__) ; 
 int FUNC10 (struct inode*,scalar_t__,scalar_t__,scalar_t__*,struct buffer_head**) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC13(struct inode *cpfile, __u64 *cnop,
					  void *buf, unsigned int cisz,
					  size_t nci)
{
	struct nilfs_checkpoint *cp;
	struct nilfs_cpinfo *ci = buf;
	struct buffer_head *bh;
	size_t cpsz = FUNC0(cpfile)->mi_entry_size;
	__u64 cur_cno = FUNC11(cpfile), cno = *cnop;
	void *kaddr;
	int n, ret;
	int ncps, i;

	if (cno == 0)
		return -ENOENT; /* checkpoint number 0 is invalid */
	FUNC2(&FUNC0(cpfile)->mi_sem);

	for (n = 0; n < nci; cno += ncps) {
		ret = FUNC10(
			cpfile, cno, cur_cno - 1, &cno, &bh);
		if (ret < 0) {
			if (FUNC5(ret == -ENOENT))
				break;
			goto out;
		}
		ncps = FUNC9(cpfile, cno, cur_cno);

		kaddr = FUNC3(bh->b_page);
		cp = FUNC7(cpfile, cno, bh, kaddr);
		for (i = 0; i < ncps && n < nci; i++, cp = (void *)cp + cpsz) {
			if (!FUNC6(cp)) {
				FUNC8(cpfile, cp,
								  ci);
				ci = (void *)ci + cisz;
				n++;
			}
		}
		FUNC4(kaddr);
		FUNC1(bh);
	}

	ret = n;
	if (n > 0) {
		ci = (void *)ci - cisz;
		*cnop = ci->ci_cno + 1;
	}

 out:
	FUNC12(&FUNC0(cpfile)->mi_sem);
	return ret;
}