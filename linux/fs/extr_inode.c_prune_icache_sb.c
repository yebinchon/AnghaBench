
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_inode_lru; } ;
struct shrink_control {int dummy; } ;


 int LIST_HEAD (int ) ;
 int dispose_list (int *) ;
 int freeable ;
 int inode_lru_isolate ;
 long list_lru_shrink_walk (int *,struct shrink_control*,int ,int *) ;

long prune_icache_sb(struct super_block *sb, struct shrink_control *sc)
{
 LIST_HEAD(freeable);
 long freed;

 freed = list_lru_shrink_walk(&sb->s_inode_lru, sc,
         inode_lru_isolate, &freeable);
 dispose_list(&freeable);
 return freed;
}
