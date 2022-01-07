
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_widget_tree {int root; struct hdac_widget_tree* nodes; } ;
struct hdac_device {scalar_t__ start_nid; int num_nodes; scalar_t__ end_nid; struct hdac_widget_tree* widgets; } ;
typedef scalar_t__ hda_nid_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int KOBJ_CHANGE ;
 int add_widget_node (int ,scalar_t__,int *,struct hdac_widget_tree*) ;
 int free_widget_node (struct hdac_widget_tree,int *) ;
 struct hdac_widget_tree* kcalloc (int,int,int ) ;
 int kfree (struct hdac_widget_tree*) ;
 struct hdac_widget_tree* kmemdup (struct hdac_widget_tree*,int,int ) ;
 int kobject_uevent (int ,int ) ;
 int widget_node_group ;

int hda_widget_sysfs_reinit(struct hdac_device *codec,
       hda_nid_t start_nid, int num_nodes)
{
 struct hdac_widget_tree *tree;
 hda_nid_t end_nid = start_nid + num_nodes;
 hda_nid_t nid;
 int i;

 if (!codec->widgets)
  return 0;

 tree = kmemdup(codec->widgets, sizeof(*tree), GFP_KERNEL);
 if (!tree)
  return -ENOMEM;

 tree->nodes = kcalloc(num_nodes + 1, sizeof(*tree->nodes), GFP_KERNEL);
 if (!tree->nodes) {
  kfree(tree);
  return -ENOMEM;
 }


 for (i = 0, nid = codec->start_nid; i < codec->num_nodes; i++, nid++) {
  if (nid < start_nid || nid >= end_nid)
   free_widget_node(codec->widgets->nodes[i],
      &widget_node_group);
 }


 for (i = 0, nid = start_nid; i < num_nodes; i++, nid++) {
  if (nid < codec->start_nid || nid >= codec->end_nid)
   add_widget_node(tree->root, nid, &widget_node_group,
     &tree->nodes[i]);
  else
   tree->nodes[i] =
    codec->widgets->nodes[nid - codec->start_nid];
 }


 kfree(codec->widgets->nodes);
 kfree(codec->widgets);
 codec->widgets = tree;

 kobject_uevent(tree->root, KOBJ_CHANGE);
 return 0;
}
