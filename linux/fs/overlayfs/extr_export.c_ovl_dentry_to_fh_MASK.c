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
typedef  int /*<<< orphan*/  u32 ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int FILEID_INVALID ; 
 int OVL_FILEID ; 
 int FUNC0 (struct dentry*,char*,int) ; 

__attribute__((used)) static int FUNC1(struct dentry *dentry, u32 *fid, int *max_len)
{
	int res, len = *max_len << 2;

	res = FUNC0(dentry, (char *)fid, len);
	if (res <= 0)
		return FILEID_INVALID;

	len = res;

	/* Round up to dwords */
	*max_len = (len + 3) >> 2;
	return OVL_FILEID;
}