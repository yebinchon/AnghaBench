
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct super_block {int s_fsnotify_mask; int s_fsnotify_marks; } ;
struct qstr {int dummy; } ;
struct path {int mnt; } ;
struct mount {int mnt_fsnotify_mask; int mnt_fsnotify_marks; } ;
struct inode {int i_fsnotify_mask; int i_fsnotify_marks; struct super_block* i_sb; } ;
struct fsnotify_iter_info {int srcu_idx; void** marks; } ;
typedef int __u32 ;


 int ALL_FSNOTIFY_EVENTS ;
 int ALL_FSNOTIFY_PERM_EVENTS ;
 int FSNOTIFY_EVENT_PATH ;
 size_t FSNOTIFY_OBJ_TYPE_INODE ;
 size_t FSNOTIFY_OBJ_TYPE_SB ;
 size_t FSNOTIFY_OBJ_TYPE_VFSMOUNT ;
 int FS_EVENT_ON_CHILD ;
 int FS_MODIFY ;
 void* fsnotify_first_mark (int *) ;
 int fsnotify_iter_next (struct fsnotify_iter_info*) ;
 scalar_t__ fsnotify_iter_select_report_types (struct fsnotify_iter_info*) ;
 int fsnotify_mark_srcu ;
 struct mount* real_mount (int ) ;
 int send_to_group (struct inode*,int,void const*,int,int ,struct qstr const*,struct fsnotify_iter_info*) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int ) ;

int fsnotify(struct inode *to_tell, __u32 mask, const void *data, int data_is,
      const struct qstr *file_name, u32 cookie)
{
 struct fsnotify_iter_info iter_info = {};
 struct super_block *sb = to_tell->i_sb;
 struct mount *mnt = ((void*)0);
 __u32 mnt_or_sb_mask = sb->s_fsnotify_mask;
 int ret = 0;
 __u32 test_mask = (mask & ALL_FSNOTIFY_EVENTS);

 if (data_is == FSNOTIFY_EVENT_PATH) {
  mnt = real_mount(((const struct path *)data)->mnt);
  mnt_or_sb_mask |= mnt->mnt_fsnotify_mask;
 }

 if (mask & FS_EVENT_ON_CHILD)
  mnt_or_sb_mask = 0;
 if (!to_tell->i_fsnotify_marks && !sb->s_fsnotify_marks &&
     (!mnt || !mnt->mnt_fsnotify_marks))
  return 0;





 if (!(mask & FS_MODIFY) &&
     !(test_mask & (to_tell->i_fsnotify_mask | mnt_or_sb_mask)))
  return 0;

 iter_info.srcu_idx = srcu_read_lock(&fsnotify_mark_srcu);

 iter_info.marks[FSNOTIFY_OBJ_TYPE_INODE] =
  fsnotify_first_mark(&to_tell->i_fsnotify_marks);
 iter_info.marks[FSNOTIFY_OBJ_TYPE_SB] =
  fsnotify_first_mark(&sb->s_fsnotify_marks);
 if (mnt) {
  iter_info.marks[FSNOTIFY_OBJ_TYPE_VFSMOUNT] =
   fsnotify_first_mark(&mnt->mnt_fsnotify_marks);
 }






 while (fsnotify_iter_select_report_types(&iter_info)) {
  ret = send_to_group(to_tell, mask, data, data_is, cookie,
        file_name, &iter_info);

  if (ret && (mask & ALL_FSNOTIFY_PERM_EVENTS))
   goto out;

  fsnotify_iter_next(&iter_info);
 }
 ret = 0;
out:
 srcu_read_unlock(&fsnotify_mark_srcu, iter_info.srcu_idx);

 return ret;
}
