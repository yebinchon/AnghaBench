
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct hsr_priv {struct dentry* node_tbl_file; struct dentry* node_tbl_root; } ;
struct dentry {int dummy; } ;


 int S_IFREG ;
 struct dentry* debugfs_create_dir (int ,int *) ;
 struct dentry* debugfs_create_file (char*,int,struct dentry*,struct hsr_priv*,int *) ;
 int hsr_fops ;
 int pr_err (char*) ;

int hsr_debugfs_init(struct hsr_priv *priv, struct net_device *hsr_dev)
{
 int rc = -1;
 struct dentry *de = ((void*)0);

 de = debugfs_create_dir(hsr_dev->name, ((void*)0));
 if (!de) {
  pr_err("Cannot create hsr debugfs root\n");
  return rc;
 }

 priv->node_tbl_root = de;

 de = debugfs_create_file("node_table", S_IFREG | 0444,
     priv->node_tbl_root, priv,
     &hsr_fops);
 if (!de) {
  pr_err("Cannot create hsr node_table directory\n");
  return rc;
 }
 priv->node_tbl_file = de;

 return 0;
}
