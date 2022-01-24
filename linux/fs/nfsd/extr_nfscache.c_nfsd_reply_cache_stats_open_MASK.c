#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nfsd_net {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {TYPE_1__* i_sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_fs_info; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct file*) ; 
 struct nfsd_net* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  nfsd_reply_cache_stats_show ; 
 int FUNC2 (struct file*,int /*<<< orphan*/ ,struct nfsd_net*) ; 

int FUNC3(struct inode *inode, struct file *file)
{
	struct nfsd_net *nn = FUNC1(FUNC0(file)->i_sb->s_fs_info,
								nfsd_net_id);

	return FUNC2(file, nfsd_reply_cache_stats_show, nn);
}