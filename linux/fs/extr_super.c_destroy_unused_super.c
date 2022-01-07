
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int destroy_work; int s_shrink; int s_subtype; int s_user_ns; int s_inode_lru; int s_dentry_lru; int s_umount; } ;


 int destroy_super_work (int *) ;
 int free_prealloced_shrinker (int *) ;
 int kfree (int ) ;
 int list_lru_destroy (int *) ;
 int put_user_ns (int ) ;
 int security_sb_free (struct super_block*) ;
 int up_write (int *) ;

__attribute__((used)) static void destroy_unused_super(struct super_block *s)
{
 if (!s)
  return;
 up_write(&s->s_umount);
 list_lru_destroy(&s->s_dentry_lru);
 list_lru_destroy(&s->s_inode_lru);
 security_sb_free(s);
 put_user_ns(s->s_user_ns);
 kfree(s->s_subtype);
 free_prealloced_shrinker(&s->s_shrink);

 destroy_super_work(&s->destroy_work);
}
