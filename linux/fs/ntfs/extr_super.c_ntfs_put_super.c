
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct super_block {int * s_fs_info; } ;
struct TYPE_6__ {int major_ver; int cluster_size; int nls_map; int * upcase; scalar_t__ upcase_len; int * attrdef; scalar_t__ attrdef_size; int * mft_ino; int * mftmirr_ino; int * logfile_ino; int mftbmp_lock; int * mftbmp_ino; int lcnbmp_lock; int * lcnbmp_ino; int * root_ino; int * secure_ino; int * extend_ino; int * quota_ino; int * quota_q_ino; int * usnjrnl_ino; int * usnjrnl_max_ino; int * usnjrnl_j_ino; int * vol_ino; } ;
typedef TYPE_1__ ntfs_volume ;


 TYPE_1__* NTFS_SB (struct super_block*) ;
 int NVolErrors (TYPE_1__*) ;
 int VOLUME_IS_DIRTY ;
 int * default_upcase ;
 int down_write (int *) ;
 int free_compression_buffers () ;
 int iput (int *) ;
 int kfree (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ ntfs_clear_volume_flags (TYPE_1__*,int ) ;
 int ntfs_commit_inode (int *) ;
 int ntfs_debug (char*) ;
 int ntfs_free (int *) ;
 int ntfs_lock ;
 int ntfs_nr_compression_users ;
 int ntfs_nr_upcase_users ;
 int ntfs_warning (struct super_block*,char*) ;
 int sb_rdonly (struct super_block*) ;
 int unload_nls (int ) ;
 int up_write (int *) ;
 int write_inode_now (int *,int) ;

__attribute__((used)) static void ntfs_put_super(struct super_block *sb)
{
 ntfs_volume *vol = NTFS_SB(sb);

 ntfs_debug("Entering.");
 iput(vol->vol_ino);
 vol->vol_ino = ((void*)0);


 if (vol->major_ver >= 3) {
  if (vol->extend_ino) {
   iput(vol->extend_ino);
   vol->extend_ino = ((void*)0);
  }
  if (vol->secure_ino) {
   iput(vol->secure_ino);
   vol->secure_ino = ((void*)0);
  }
 }

 iput(vol->root_ino);
 vol->root_ino = ((void*)0);

 down_write(&vol->lcnbmp_lock);
 iput(vol->lcnbmp_ino);
 vol->lcnbmp_ino = ((void*)0);
 up_write(&vol->lcnbmp_lock);

 down_write(&vol->mftbmp_lock);
 iput(vol->mftbmp_ino);
 vol->mftbmp_ino = ((void*)0);
 up_write(&vol->mftbmp_lock);
 iput(vol->mft_ino);
 vol->mft_ino = ((void*)0);


 vol->attrdef_size = 0;
 if (vol->attrdef) {
  ntfs_free(vol->attrdef);
  vol->attrdef = ((void*)0);
 }
 vol->upcase_len = 0;




 mutex_lock(&ntfs_lock);
 if (vol->upcase == default_upcase) {
  ntfs_nr_upcase_users--;
  vol->upcase = ((void*)0);
 }
 if (!ntfs_nr_upcase_users && default_upcase) {
  ntfs_free(default_upcase);
  default_upcase = ((void*)0);
 }
 if (vol->cluster_size <= 4096 && !--ntfs_nr_compression_users)
  free_compression_buffers();
 mutex_unlock(&ntfs_lock);
 if (vol->upcase) {
  ntfs_free(vol->upcase);
  vol->upcase = ((void*)0);
 }

 unload_nls(vol->nls_map);

 sb->s_fs_info = ((void*)0);
 kfree(vol);
}
