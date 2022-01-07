
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct kernfs_super_info {int node; } ;


 struct kernfs_super_info* kernfs_info (struct super_block*) ;
 int kernfs_mutex ;
 int kfree (struct kernfs_super_info*) ;
 int kill_anon_super (struct super_block*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void kernfs_kill_sb(struct super_block *sb)
{
 struct kernfs_super_info *info = kernfs_info(sb);

 mutex_lock(&kernfs_mutex);
 list_del(&info->node);
 mutex_unlock(&kernfs_mutex);





 kill_anon_super(sb);
 kfree(info);
}
