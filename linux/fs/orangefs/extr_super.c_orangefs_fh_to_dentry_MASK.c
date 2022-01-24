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
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct orangefs_object_kref {scalar_t__ fs_id; int /*<<< orphan*/  khandle; } ;
struct fid {scalar_t__* raw; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GOSSIP_SUPER_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,struct orangefs_object_kref*) ; 

__attribute__((used)) static struct dentry *FUNC4(struct super_block *sb,
				  struct fid *fid,
				  int fh_len,
				  int fh_type)
{
	struct orangefs_object_kref refn;

	if (fh_len < 5 || fh_type > 2)
		return NULL;

	FUNC0(&(refn.khandle), fid->raw, 16);
	refn.fs_id = (u32) fid->raw[4];
	FUNC2(GOSSIP_SUPER_DEBUG,
		     "fh_to_dentry: handle %pU, fs_id %d\n",
		     &refn.khandle,
		     refn.fs_id);

	return FUNC1(FUNC3(sb, &refn));
}