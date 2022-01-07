
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dentry; int mnt; } ;
struct TYPE_2__ {int mnt_flags; } ;
struct mount {TYPE_1__ mnt; } ;


 int MNT_SYNC_UMOUNT ;
 struct mount* __lookup_mnt (int ,int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline bool __path_is_mountpoint(const struct path *path)
{
 struct mount *m = __lookup_mnt(path->mnt, path->dentry);
 return m && likely(!(m->mnt.mnt_flags & MNT_SYNC_UMOUNT));
}
