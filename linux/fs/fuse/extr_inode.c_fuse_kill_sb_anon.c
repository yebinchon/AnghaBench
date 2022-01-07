
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int fuse_sb_destroy (struct super_block*) ;
 int kill_anon_super (struct super_block*) ;

void fuse_kill_sb_anon(struct super_block *sb)
{
 fuse_sb_destroy(sb);
 kill_anon_super(sb);
}
