
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsr_priv {int * node_tbl_root; int * node_tbl_file; } ;


 int debugfs_remove (int *) ;

void
hsr_debugfs_term(struct hsr_priv *priv)
{
 debugfs_remove(priv->node_tbl_file);
 priv->node_tbl_file = ((void*)0);
 debugfs_remove(priv->node_tbl_root);
 priv->node_tbl_root = ((void*)0);
}
