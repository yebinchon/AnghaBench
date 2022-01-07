
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
struct super_block {int dummy; } ;
struct jfs_inode_info {int mode2; scalar_t__ xtlid; scalar_t__ atltail; scalar_t__ atlhead; scalar_t__ blid; scalar_t__ bxflag; scalar_t__ btindex; scalar_t__ btorder; scalar_t__ acltype; scalar_t__ next_index; int ea; int acl; scalar_t__ cflag; int otime; int saved_gid; int saved_uid; } ;
struct TYPE_3__ {int tv_sec; } ;
struct inode {int i_mode; int i_flags; scalar_t__ i_generation; TYPE_1__ i_ctime; TYPE_1__ i_atime; TYPE_1__ i_mtime; scalar_t__ i_blocks; int i_gid; int i_uid; struct super_block* i_sb; } ;
typedef int dxd_t ;
struct TYPE_4__ {int gengen; } ;


 int EINVAL ;
 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 int IDIRECTORY ;
 int INLINEEA ;
 int ISPARSE ;
 int JFS_APPEND_FL ;
 int JFS_DIRSYNC_FL ;
 int JFS_FL_INHERIT ;
 int JFS_IMMUTABLE_FL ;
 struct jfs_inode_info* JFS_IP (struct inode*) ;
 TYPE_2__* JFS_SBI (struct super_block*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int S_NOQUOTA ;
 int clear_nlink (struct inode*) ;
 TYPE_1__ current_time (struct inode*) ;
 int diAlloc (struct inode*,scalar_t__,struct inode*) ;
 int discard_new_inode (struct inode*) ;
 int dquot_alloc_inode (struct inode*) ;
 int dquot_drop (struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int inode_init_owner (struct inode*,struct inode*,int ) ;
 scalar_t__ insert_inode_locked (struct inode*) ;
 int iput (struct inode*) ;
 int jfs_info (char*,struct inode*) ;
 int jfs_set_inode_flags (struct inode*) ;
 int jfs_warn (char*,...) ;
 int memset (int *,int ,int) ;
 struct inode* new_inode (struct super_block*) ;

struct inode *ialloc(struct inode *parent, umode_t mode)
{
 struct super_block *sb = parent->i_sb;
 struct inode *inode;
 struct jfs_inode_info *jfs_inode;
 int rc;

 inode = new_inode(sb);
 if (!inode) {
  jfs_warn("ialloc: new_inode returned NULL!");
  return ERR_PTR(-ENOMEM);
 }

 jfs_inode = JFS_IP(inode);

 rc = diAlloc(parent, S_ISDIR(mode), inode);
 if (rc) {
  jfs_warn("ialloc: diAlloc returned %d!", rc);
  goto fail_put;
 }

 if (insert_inode_locked(inode) < 0) {
  rc = -EINVAL;
  goto fail_put;
 }

 inode_init_owner(inode, parent, mode);




 jfs_inode->saved_uid = inode->i_uid;
 jfs_inode->saved_gid = inode->i_gid;




 rc = dquot_initialize(inode);
 if (rc)
  goto fail_drop;
 rc = dquot_alloc_inode(inode);
 if (rc)
  goto fail_drop;


 jfs_inode->mode2 = JFS_IP(parent)->mode2 & JFS_FL_INHERIT;

 if (S_ISDIR(mode)) {
  jfs_inode->mode2 |= IDIRECTORY;
  jfs_inode->mode2 &= ~JFS_DIRSYNC_FL;
 }
 else {
  jfs_inode->mode2 |= INLINEEA | ISPARSE;
  if (S_ISLNK(mode))
   jfs_inode->mode2 &= ~(JFS_IMMUTABLE_FL|JFS_APPEND_FL);
 }
 jfs_inode->mode2 |= inode->i_mode;

 inode->i_blocks = 0;
 inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
 jfs_inode->otime = inode->i_ctime.tv_sec;
 inode->i_generation = JFS_SBI(sb)->gengen++;

 jfs_inode->cflag = 0;


 memset(&jfs_inode->acl, 0, sizeof(dxd_t));
 memset(&jfs_inode->ea, 0, sizeof(dxd_t));
 jfs_inode->next_index = 0;
 jfs_inode->acltype = 0;
 jfs_inode->btorder = 0;
 jfs_inode->btindex = 0;
 jfs_inode->bxflag = 0;
 jfs_inode->blid = 0;
 jfs_inode->atlhead = 0;
 jfs_inode->atltail = 0;
 jfs_inode->xtlid = 0;
 jfs_set_inode_flags(inode);

 jfs_info("ialloc returns inode = 0x%p", inode);

 return inode;

fail_drop:
 dquot_drop(inode);
 inode->i_flags |= S_NOQUOTA;
 clear_nlink(inode);
 discard_new_inode(inode);
 return ERR_PTR(rc);

fail_put:
 iput(inode);
 return ERR_PTR(rc);
}
