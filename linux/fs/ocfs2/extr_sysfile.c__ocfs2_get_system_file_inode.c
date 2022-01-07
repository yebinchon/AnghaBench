
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ocfs2_super {int sys_root_inode; } ;
struct inode {int dummy; } ;
typedef int namebuf ;
struct TYPE_7__ {int * key; } ;
struct TYPE_5__ {TYPE_3__ l_lockdep_map; } ;
struct TYPE_8__ {TYPE_1__ ip_inode_lockres; } ;
struct TYPE_6__ {int si_name; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 int JOURNAL_SYSTEM_INODE ;
 int LOCAL_GROUP_QUOTA_SYSTEM_INODE ;
 int LOCAL_USER_QUOTA_SYSTEM_INODE ;
 int OCFS2_FI_FLAG_SYSFILE ;
 TYPE_4__* OCFS2_I (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int lockdep_init_map (TYPE_3__*,int ,int *,int ) ;
 int mlog_errno (int ) ;
 struct inode* ocfs2_iget (struct ocfs2_super*,int ,int ,int) ;
 int ocfs2_lookup_ino_from_name (int ,char*,int ,int *) ;
 int ocfs2_sprintf_system_inode_name (char*,int,int,int ) ;
 int * ocfs2_sysfile_cluster_lock_key ;
 TYPE_2__* ocfs2_system_inodes ;
 int strlen (char*) ;

__attribute__((used)) static struct inode * _ocfs2_get_system_file_inode(struct ocfs2_super *osb,
         int type,
         u32 slot)
{
 char namebuf[40];
 struct inode *inode = ((void*)0);
 u64 blkno;
 int status = 0;

 ocfs2_sprintf_system_inode_name(namebuf,
     sizeof(namebuf),
     type, slot);

 status = ocfs2_lookup_ino_from_name(osb->sys_root_inode, namebuf,
         strlen(namebuf), &blkno);
 if (status < 0) {
  goto bail;
 }

 inode = ocfs2_iget(osb, blkno, OCFS2_FI_FLAG_SYSFILE, type);
 if (IS_ERR(inode)) {
  mlog_errno(PTR_ERR(inode));
  inode = ((void*)0);
  goto bail;
 }
bail:

 return inode;
}
