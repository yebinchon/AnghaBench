
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; int s_xattr; int * s_export_op; int * s_op; TYPE_1__* s_mtd; struct jffs2_sb_info* s_fs_info; } ;
struct jffs2_sb_info {int inocache_lock; int erase_completion_lock; int inocache_wq; int erase_wait; int erase_free_sem; int alloc_sem; struct super_block* os_priv; TYPE_1__* mtd; } ;
struct fs_context {int dummy; } ;
struct TYPE_2__ {int name; int index; } ;


 int SB_NOATIME ;
 int SB_POSIXACL ;
 int init_waitqueue_head (int *) ;
 int jffs2_dbg (int,char*,int ,int ) ;
 int jffs2_do_fill_super (struct super_block*,struct fs_context*) ;
 int jffs2_export_ops ;
 int jffs2_super_operations ;
 int jffs2_xattr_handlers ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int jffs2_fill_super(struct super_block *sb, struct fs_context *fc)
{
 struct jffs2_sb_info *c = sb->s_fs_info;

 jffs2_dbg(1, "jffs2_get_sb_mtd():"
    " New superblock for device %d (\"%s\")\n",
    sb->s_mtd->index, sb->s_mtd->name);

 c->mtd = sb->s_mtd;
 c->os_priv = sb;



 mutex_init(&c->alloc_sem);
 mutex_init(&c->erase_free_sem);
 init_waitqueue_head(&c->erase_wait);
 init_waitqueue_head(&c->inocache_wq);
 spin_lock_init(&c->erase_completion_lock);
 spin_lock_init(&c->inocache_lock);

 sb->s_op = &jffs2_super_operations;
 sb->s_export_op = &jffs2_export_ops;
 sb->s_flags = sb->s_flags | SB_NOATIME;
 sb->s_xattr = jffs2_xattr_handlers;



 return jffs2_do_fill_super(sb, fc);
}
