
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct jffs2_sb_info {int alloc_sem; int wbuf_dwork; } ;


 struct jffs2_sb_info* JFFS2_SB_INFO (struct super_block*) ;
 int cancel_delayed_work_sync (int *) ;
 int jffs2_flush_wbuf_pad (struct jffs2_sb_info*) ;
 scalar_t__ jffs2_is_writebuffered (struct jffs2_sb_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int jffs2_sync_fs(struct super_block *sb, int wait)
{
 struct jffs2_sb_info *c = JFFS2_SB_INFO(sb);






 mutex_lock(&c->alloc_sem);
 jffs2_flush_wbuf_pad(c);
 mutex_unlock(&c->alloc_sem);
 return 0;
}
