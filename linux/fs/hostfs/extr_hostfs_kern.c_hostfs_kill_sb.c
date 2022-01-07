
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_fs_info; } ;


 int kfree (int ) ;
 int kill_anon_super (struct super_block*) ;

__attribute__((used)) static void hostfs_kill_sb(struct super_block *s)
{
 kill_anon_super(s);
 kfree(s->s_fs_info);
}
