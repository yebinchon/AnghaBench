
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_dentry_lru; } ;
struct shrink_control {int dummy; } ;


 int LIST_HEAD (int ) ;
 int dentry_lru_isolate ;
 int dispose ;
 long list_lru_shrink_walk (int *,struct shrink_control*,int ,int *) ;
 int shrink_dentry_list (int *) ;

long prune_dcache_sb(struct super_block *sb, struct shrink_control *sc)
{
 LIST_HEAD(dispose);
 long freed;

 freed = list_lru_shrink_walk(&sb->s_dentry_lru, sc,
         dentry_lru_isolate, &dispose);
 shrink_dentry_list(&dispose);
 return freed;
}
