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
struct seq_file {int dummy; } ;
struct nfs_server {TYPE_1__* nfs_client; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  cl_rpcclient; } ;

/* Variables and functions */
 struct nfs_server* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPC_DISPLAY_ADDR ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,struct nfs_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

int FUNC6(struct seq_file *m, struct dentry *root)
{
	struct nfs_server *nfss = FUNC0(root->d_sb);

	FUNC1(m, nfss, 0);

	FUNC2();
	FUNC5(m, ",addr=%s",
			FUNC4(nfss->nfs_client->cl_rpcclient,
							RPC_DISPLAY_ADDR));
	FUNC3();

	return 0;
}