
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time64_t ;
struct TYPE_3__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_4__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct inode {TYPE_1__ i_ctime; TYPE_2__ i_mtime; int i_sb; } ;


 int hpfs_write_inode_nolock (struct inode*) ;
 int local_get_seconds (int ) ;
 scalar_t__ local_to_gmt (int ,int ) ;

__attribute__((used)) static void hpfs_update_directory_times(struct inode *dir)
{
 time64_t t = local_to_gmt(dir->i_sb, local_get_seconds(dir->i_sb));
 if (t == dir->i_mtime.tv_sec &&
     t == dir->i_ctime.tv_sec)
  return;
 dir->i_mtime.tv_sec = dir->i_ctime.tv_sec = t;
 dir->i_mtime.tv_nsec = dir->i_ctime.tv_nsec = 0;
 hpfs_write_inode_nolock(dir);
}
