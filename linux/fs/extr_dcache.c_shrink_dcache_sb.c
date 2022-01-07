
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_dentry_lru; } ;


 int LIST_HEAD (int ) ;
 int dentry_lru_isolate_shrink ;
 int dispose ;
 scalar_t__ list_lru_count (int *) ;
 int list_lru_walk (int *,int ,int *,int) ;
 int shrink_dentry_list (int *) ;

void shrink_dcache_sb(struct super_block *sb)
{
 do {
  LIST_HEAD(dispose);

  list_lru_walk(&sb->s_dentry_lru,
   dentry_lru_isolate_shrink, &dispose, 1024);
  shrink_dentry_list(&dispose);
 } while (list_lru_count(&sb->s_dentry_lru) > 0);
}
