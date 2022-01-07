
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct inode {int i_mode; int i_flags; int i_gid; int i_uid; int i_sb; } ;
struct hfsplus_sb_info {int umask; int gid; int uid; } ;
struct hfsplus_perm {int rootflags; int userflags; int group; int owner; int mode; } ;
struct TYPE_2__ {int userflags; } ;


 int HFSPLUS_FLG_APPEND ;
 int HFSPLUS_FLG_IMMUTABLE ;
 TYPE_1__* HFSPLUS_I (struct inode*) ;
 struct hfsplus_sb_info* HFSPLUS_SB (int ) ;
 int S_APPEND ;
 int S_IALLUGO ;
 int S_IFDIR ;
 int S_IFREG ;
 int S_IMMUTABLE ;
 int S_IRUGO ;
 int S_IRWXUGO ;
 int S_IWUGO ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int i_gid_read (struct inode*) ;
 int i_gid_write (struct inode*,int ) ;
 int i_uid_read (struct inode*) ;
 int i_uid_write (struct inode*,int ) ;

__attribute__((used)) static void hfsplus_get_perms(struct inode *inode,
  struct hfsplus_perm *perms, int dir)
{
 struct hfsplus_sb_info *sbi = HFSPLUS_SB(inode->i_sb);
 u16 mode;

 mode = be16_to_cpu(perms->mode);

 i_uid_write(inode, be32_to_cpu(perms->owner));
 if (!i_uid_read(inode) && !mode)
  inode->i_uid = sbi->uid;

 i_gid_write(inode, be32_to_cpu(perms->group));
 if (!i_gid_read(inode) && !mode)
  inode->i_gid = sbi->gid;

 if (dir) {
  mode = mode ? (mode & S_IALLUGO) : (S_IRWXUGO & ~(sbi->umask));
  mode |= S_IFDIR;
 } else if (!mode)
  mode = S_IFREG | ((S_IRUGO|S_IWUGO) & ~(sbi->umask));
 inode->i_mode = mode;

 HFSPLUS_I(inode)->userflags = perms->userflags;
 if (perms->rootflags & HFSPLUS_FLG_IMMUTABLE)
  inode->i_flags |= S_IMMUTABLE;
 else
  inode->i_flags &= ~S_IMMUTABLE;
 if (perms->rootflags & HFSPLUS_FLG_APPEND)
  inode->i_flags |= S_APPEND;
 else
  inode->i_flags &= ~S_APPEND;
}
