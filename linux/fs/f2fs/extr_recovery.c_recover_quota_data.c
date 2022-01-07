
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uid_t ;
struct page {int dummy; } ;
struct inode {int i_gid; int i_uid; TYPE_1__* i_sb; } ;
struct iattr {int ia_valid; int ia_gid; int ia_uid; } ;
struct f2fs_inode {int i_gid; int i_uid; } ;
typedef void* gid_t ;
typedef int attr ;
struct TYPE_2__ {int s_user_ns; } ;


 int ATTR_GID ;
 int ATTR_UID ;
 struct f2fs_inode* F2FS_INODE (struct page*) ;
 int F2FS_I_SB (struct inode*) ;
 int SBI_QUOTA_NEED_REPAIR ;
 int dquot_transfer (struct inode*,struct iattr*) ;
 int gid_eq (int ,int ) ;
 void* le32_to_cpu (int ) ;
 int make_kgid (int ,void*) ;
 int make_kuid (int ,void*) ;
 int memset (struct iattr*,int ,int) ;
 int set_sbi_flag (int ,int ) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static int recover_quota_data(struct inode *inode, struct page *page)
{
 struct f2fs_inode *raw = F2FS_INODE(page);
 struct iattr attr;
 uid_t i_uid = le32_to_cpu(raw->i_uid);
 gid_t i_gid = le32_to_cpu(raw->i_gid);
 int err;

 memset(&attr, 0, sizeof(attr));

 attr.ia_uid = make_kuid(inode->i_sb->s_user_ns, i_uid);
 attr.ia_gid = make_kgid(inode->i_sb->s_user_ns, i_gid);

 if (!uid_eq(attr.ia_uid, inode->i_uid))
  attr.ia_valid |= ATTR_UID;
 if (!gid_eq(attr.ia_gid, inode->i_gid))
  attr.ia_valid |= ATTR_GID;

 if (!attr.ia_valid)
  return 0;

 err = dquot_transfer(inode, &attr);
 if (err)
  set_sbi_flag(F2FS_I_SB(inode), SBI_QUOTA_NEED_REPAIR);
 return err;
}
