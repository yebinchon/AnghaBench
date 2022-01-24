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
struct nilfs_palloc_req {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct inode*,struct nilfs_palloc_req*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct nilfs_palloc_req*) ; 
 int FUNC2 (struct inode*,struct nilfs_palloc_req*) ; 

int FUNC3(struct inode *dat, struct nilfs_palloc_req *req)
{
	int ret;

	ret = FUNC2(dat, req);
	if (ret < 0)
		return ret;

	ret = FUNC0(dat, req, 1);
	if (ret < 0)
		FUNC1(dat, req);

	return ret;
}