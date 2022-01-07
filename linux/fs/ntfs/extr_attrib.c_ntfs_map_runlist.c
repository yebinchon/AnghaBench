
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; int rl; } ;
struct TYPE_6__ {TYPE_1__ runlist; } ;
typedef TYPE_2__ ntfs_inode ;
typedef int VCN ;


 scalar_t__ LCN_RL_NOT_MAPPED ;
 int down_write (int *) ;
 scalar_t__ likely (int) ;
 int ntfs_map_runlist_nolock (TYPE_2__*,int ,int *) ;
 scalar_t__ ntfs_rl_vcn_to_lcn (int ,int ) ;
 int up_write (int *) ;

int ntfs_map_runlist(ntfs_inode *ni, VCN vcn)
{
 int err = 0;

 down_write(&ni->runlist.lock);

 if (likely(ntfs_rl_vcn_to_lcn(ni->runlist.rl, vcn) <=
   LCN_RL_NOT_MAPPED))
  err = ntfs_map_runlist_nolock(ni, vcn, ((void*)0));
 up_write(&ni->runlist.lock);
 return err;
}
