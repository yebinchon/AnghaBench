
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dentry; int mnt; } ;


 int is_path_reachable (int ,int ,struct path const*) ;
 int mount_lock ;
 int read_seqlock_excl (int *) ;
 int read_sequnlock_excl (int *) ;
 int real_mount (int ) ;

bool path_is_under(const struct path *path1, const struct path *path2)
{
 bool res;
 read_seqlock_excl(&mount_lock);
 res = is_path_reachable(real_mount(path1->mnt), path1->dentry, path2);
 read_sequnlock_excl(&mount_lock);
 return res;
}
