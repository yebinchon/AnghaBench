
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct jffs2_sb_info {int flags; int alloc_sem; } ;
struct fs_context {int sb_flags; } ;


 int EROFS ;
 int JFFS2_SB_FLAG_RO ;
 struct jffs2_sb_info* JFFS2_SB_INFO (struct super_block*) ;
 int SB_NOATIME ;
 int SB_RDONLY ;
 int jffs2_flush_wbuf_pad (struct jffs2_sb_info*) ;
 int jffs2_start_garbage_collect_thread (struct jffs2_sb_info*) ;
 int jffs2_stop_garbage_collect_thread (struct jffs2_sb_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sb_rdonly (struct super_block*) ;

int jffs2_do_remount_fs(struct super_block *sb, struct fs_context *fc)
{
 struct jffs2_sb_info *c = JFFS2_SB_INFO(sb);

 if (c->flags & JFFS2_SB_FLAG_RO && !sb_rdonly(sb))
  return -EROFS;





 if (!sb_rdonly(sb)) {
  jffs2_stop_garbage_collect_thread(c);
  mutex_lock(&c->alloc_sem);
  jffs2_flush_wbuf_pad(c);
  mutex_unlock(&c->alloc_sem);
 }

 if (!(fc->sb_flags & SB_RDONLY))
  jffs2_start_garbage_collect_thread(c);

 fc->sb_flags |= SB_NOATIME;
 return 0;
}
