
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mountpoint {int m_dentry; } ;
struct TYPE_4__ {int mnt_root; TYPE_1__* mnt_sb; } ;
struct mount {TYPE_2__ mnt; } ;
struct TYPE_3__ {int s_flags; } ;


 int EINVAL ;
 int ENOTDIR ;
 int SB_NOUSER ;
 int attach_recursive_mnt (struct mount*,struct mount*,struct mountpoint*,int) ;
 scalar_t__ d_is_dir (int ) ;

__attribute__((used)) static int graft_tree(struct mount *mnt, struct mount *p, struct mountpoint *mp)
{
 if (mnt->mnt.mnt_sb->s_flags & SB_NOUSER)
  return -EINVAL;

 if (d_is_dir(mp->m_dentry) !=
       d_is_dir(mnt->mnt.mnt_root))
  return -ENOTDIR;

 return attach_recursive_mnt(mnt, p, mp, 0);
}
