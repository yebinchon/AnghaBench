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
struct hfs_find_data {int entrylength; int /*<<< orphan*/  entryoffset; int /*<<< orphan*/  bnode; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct hfs_find_data*) ; 

int FUNC2(struct hfs_find_data *fd, void *rec, int rec_len)
{
	int res;

	res = FUNC1(fd);
	if (res)
		return res;
	if (fd->entrylength > rec_len)
		return -EINVAL;
	FUNC0(fd->bnode, rec, fd->entryoffset, fd->entrylength);
	return 0;
}