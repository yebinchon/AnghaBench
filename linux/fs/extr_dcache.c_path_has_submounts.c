
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dentry; int mnt; } ;
struct check_mount {int mounted; int mnt; } ;


 int d_walk (int ,struct check_mount*,int ) ;
 int mount_lock ;
 int path_check_mount ;
 int read_seqlock_excl (int *) ;
 int read_sequnlock_excl (int *) ;

int path_has_submounts(const struct path *parent)
{
 struct check_mount data = { .mnt = parent->mnt, .mounted = 0 };

 read_seqlock_excl(&mount_lock);
 d_walk(parent->dentry, &data, path_check_mount);
 read_sequnlock_excl(&mount_lock);

 return data.mounted;
}
