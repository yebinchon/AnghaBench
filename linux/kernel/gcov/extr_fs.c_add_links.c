
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gcov_node {char* links; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {scalar_t__ ext; } ;


 int GFP_KERNEL ;
 char debugfs_create_symlink (int ,struct dentry*,char*) ;
 int debugfs_remove (char) ;
 int deskew (char const*) ;
 int gcov_info_filename (int ) ;
 TYPE_1__* gcov_link ;
 char* get_link_target (int ,TYPE_1__*) ;
 int get_node_info (struct gcov_node*) ;
 char* kbasename (char*) ;
 char* kcalloc (int,int,int ) ;
 int kfree (char*) ;

__attribute__((used)) static void add_links(struct gcov_node *node, struct dentry *parent)
{
 const char *basename;
 char *target;
 int num;
 int i;

 for (num = 0; gcov_link[num].ext; num++)
                ;
 node->links = kcalloc(num, sizeof(struct dentry *), GFP_KERNEL);
 if (!node->links)
  return;
 for (i = 0; i < num; i++) {
  target = get_link_target(
    gcov_info_filename(get_node_info(node)),
    &gcov_link[i]);
  if (!target)
   goto out_err;
  basename = kbasename(target);
  if (basename == target)
   goto out_err;
  node->links[i] = debugfs_create_symlink(deskew(basename),
       parent, target);
  kfree(target);
 }

 return;
out_err:
 kfree(target);
 while (i-- > 0)
  debugfs_remove(node->links[i]);
 kfree(node->links);
 node->links = ((void*)0);
}
