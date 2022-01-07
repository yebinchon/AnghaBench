
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_umount; int s_inode_lru; int s_dentry_lru; int s_shrink; int s_active; struct file_system_type* s_type; } ;
struct file_system_type {int (* kill_sb ) (struct super_block*) ;} ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int cleancache_invalidate_fs (struct super_block*) ;
 int list_lru_destroy (int *) ;
 int put_filesystem (struct file_system_type*) ;
 int put_super (struct super_block*) ;
 int stub1 (struct super_block*) ;
 int unregister_shrinker (int *) ;
 int up_write (int *) ;

void deactivate_locked_super(struct super_block *s)
{
 struct file_system_type *fs = s->s_type;
 if (atomic_dec_and_test(&s->s_active)) {
  cleancache_invalidate_fs(s);
  unregister_shrinker(&s->s_shrink);
  fs->kill_sb(s);






  list_lru_destroy(&s->s_dentry_lru);
  list_lru_destroy(&s->s_inode_lru);

  put_filesystem(fs);
  put_super(s);
 } else {
  up_write(&s->s_umount);
 }
}
