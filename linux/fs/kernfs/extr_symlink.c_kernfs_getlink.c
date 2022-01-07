
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kernfs_node* target_kn; } ;
struct kernfs_node {TYPE_1__ symlink; struct kernfs_node* parent; } ;
struct inode {struct kernfs_node* i_private; } ;


 int kernfs_get_target_path (struct kernfs_node*,struct kernfs_node*,char*) ;
 int kernfs_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kernfs_getlink(struct inode *inode, char *path)
{
 struct kernfs_node *kn = inode->i_private;
 struct kernfs_node *parent = kn->parent;
 struct kernfs_node *target = kn->symlink.target_kn;
 int error;

 mutex_lock(&kernfs_mutex);
 error = kernfs_get_target_path(parent, target, path);
 mutex_unlock(&kernfs_mutex);

 return error;
}
