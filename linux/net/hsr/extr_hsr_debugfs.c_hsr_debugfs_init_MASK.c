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
struct net_device {int /*<<< orphan*/  name; } ;
struct hsr_priv {struct dentry* node_tbl_file; struct dentry* node_tbl_root; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int S_IFREG ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC1 (char*,int,struct dentry*,struct hsr_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hsr_fops ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(struct hsr_priv *priv, struct net_device *hsr_dev)
{
	int rc = -1;
	struct dentry *de = NULL;

	de = FUNC0(hsr_dev->name, NULL);
	if (!de) {
		FUNC2("Cannot create hsr debugfs root\n");
		return rc;
	}

	priv->node_tbl_root = de;

	de = FUNC1("node_table", S_IFREG | 0444,
				 priv->node_tbl_root, priv,
				 &hsr_fops);
	if (!de) {
		FUNC2("Cannot create hsr node_table directory\n");
		return rc;
	}
	priv->node_tbl_file = de;

	return 0;
}