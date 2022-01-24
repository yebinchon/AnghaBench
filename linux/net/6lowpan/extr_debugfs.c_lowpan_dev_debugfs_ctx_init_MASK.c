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
typedef  int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * table; } ;
struct lowpan_dev {TYPE_1__ ctx; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int LOWPAN_IPHC_CTX_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct dentry* FUNC1 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lowpan_ctx_flag_active_fops ; 
 int /*<<< orphan*/  lowpan_ctx_flag_c_fops ; 
 int /*<<< orphan*/  lowpan_ctx_pfx_fops ; 
 int /*<<< orphan*/  lowpan_ctx_plen_fops ; 
 struct lowpan_dev* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev,
					struct dentry *ctx, u8 id)
{
	struct lowpan_dev *ldev = FUNC3(dev);
	struct dentry *root;
	char buf[32];

	FUNC0(id > LOWPAN_IPHC_CTX_TABLE_SIZE);

	FUNC4(buf, "%d", id);

	root = FUNC1(buf, ctx);

	FUNC2("active", 0644, root, &ldev->ctx.table[id],
			    &lowpan_ctx_flag_active_fops);

	FUNC2("compression", 0644, root, &ldev->ctx.table[id],
			    &lowpan_ctx_flag_c_fops);

	FUNC2("prefix", 0644, root, &ldev->ctx.table[id],
			    &lowpan_ctx_pfx_fops);

	FUNC2("prefix_len", 0644, root, &ldev->ctx.table[id],
			    &lowpan_ctx_plen_fops);
}