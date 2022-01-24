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
struct super_block {struct net* s_fs_info; } ;
struct sunrpc_net {int /*<<< orphan*/  pipefs_sb_lock; struct super_block* pipefs_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  inum; } ;
struct net {TYPE_1__ ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*) ; 
 int /*<<< orphan*/  RPC_PIPEFS_UMOUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sunrpc_net* FUNC6 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net*) ; 
 int /*<<< orphan*/  rpc_pipefs_notifier_list ; 
 int /*<<< orphan*/  sunrpc_net_id ; 

__attribute__((used)) static void FUNC8(struct super_block *sb)
{
	struct net *net = sb->s_fs_info;
	struct sunrpc_net *sn = FUNC6(net, sunrpc_net_id);

	FUNC4(&sn->pipefs_sb_lock);
	if (sn->pipefs_sb != sb) {
		FUNC5(&sn->pipefs_sb_lock);
		goto out;
	}
	sn->pipefs_sb = NULL;
	FUNC2("RPC:       sending pipefs UMOUNT notification for net %x%s\n",
		net->ns.inum, FUNC0(net));
	FUNC1(&rpc_pipefs_notifier_list,
					   RPC_PIPEFS_UMOUNT,
					   sb);
	FUNC5(&sn->pipefs_sb_lock);
out:
	FUNC3(sb);
	FUNC7(net);
}