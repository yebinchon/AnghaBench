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
struct nfs4_ff_layout_mirror {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  write_stat; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  NFS4_FF_MIRROR_STAT_AVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nfs4_ff_layout_mirror*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct inode *inode,
		struct nfs4_ff_layout_mirror *mirror,
		__u64 requested, ktime_t now)
{
	bool report;

	FUNC4(&mirror->lock);
	report = FUNC1(mirror , &mirror->write_stat, now);
	FUNC0(&mirror->write_stat, requested);
	FUNC3(NFS4_FF_MIRROR_STAT_AVAIL, &mirror->flags);
	FUNC5(&mirror->lock);

	if (report)
		FUNC2(inode, GFP_NOIO);
}