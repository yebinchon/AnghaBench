
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int mnt_root; } ;
struct super_block {int dummy; } ;
struct path {int dentry; struct vfsmount* mnt; } ;
struct ext4_sb_info {int s_mount_flags; TYPE_1__* s_es; int s_sbh; } ;
typedef char handle_t ;
typedef int buf ;
struct TYPE_2__ {int s_last_mounted; } ;


 int BUFFER_TRACE (int ,char*) ;
 int EXT4_HT_MISC ;
 int EXT4_MF_MNTDIR_SAMPLED ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 scalar_t__ IS_ERR (char*) ;
 int PTR_ERR (char*) ;
 char* d_path (struct path*,char*,int) ;
 int ext4_handle_dirty_super (char*,struct super_block*) ;
 int ext4_journal_get_write_access (char*,int ) ;
 char* ext4_journal_start_sb (struct super_block*,int ,int) ;
 int ext4_journal_stop (char*) ;
 scalar_t__ likely (int) ;
 int memset (char*,int ,int) ;
 int sb_end_intwrite (struct super_block*) ;
 scalar_t__ sb_rdonly (struct super_block*) ;
 int sb_start_intwrite_trylock (struct super_block*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int ext4_sample_last_mounted(struct super_block *sb,
        struct vfsmount *mnt)
{
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 struct path path;
 char buf[64], *cp;
 handle_t *handle;
 int err;

 if (likely(sbi->s_mount_flags & EXT4_MF_MNTDIR_SAMPLED))
  return 0;

 if (sb_rdonly(sb) || !sb_start_intwrite_trylock(sb))
  return 0;

 sbi->s_mount_flags |= EXT4_MF_MNTDIR_SAMPLED;






 memset(buf, 0, sizeof(buf));
 path.mnt = mnt;
 path.dentry = mnt->mnt_root;
 cp = d_path(&path, buf, sizeof(buf));
 err = 0;
 if (IS_ERR(cp))
  goto out;

 handle = ext4_journal_start_sb(sb, EXT4_HT_MISC, 1);
 err = PTR_ERR(handle);
 if (IS_ERR(handle))
  goto out;
 BUFFER_TRACE(sbi->s_sbh, "get_write_access");
 err = ext4_journal_get_write_access(handle, sbi->s_sbh);
 if (err)
  goto out_journal;
 strlcpy(sbi->s_es->s_last_mounted, cp,
  sizeof(sbi->s_es->s_last_mounted));
 ext4_handle_dirty_super(handle, sb);
out_journal:
 ext4_journal_stop(handle);
out:
 sb_end_intwrite(sb);
 return err;
}
